import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/common/widgets/bottom_navigation_bar.dart';
import 'package:goat_app/features/chat/presentation/chat_screen.dart';
import 'package:goat_app/features/feed/logic/api_service.dart';
import 'package:goat_app/features/feed/presentation/screens/standing_screen.dart';
import 'package:goat_app/features/feed/presentation/widgets/fixture_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/lineup_tab.dart';
import 'package:goat_app/features/feed/presentation/widgets/loading_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/predict_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/stats_card.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/headtohead_model.dart';
import 'package:goat_app/models/lineup_model.dart';
import 'package:goat_app/models/statistics_model.dart';
import 'package:goat_app/models/user.dart';

class FixtureDetailsTabs extends StatefulWidget {
  final List<FixtureResponse> response;
  final int index;
  UserModel? currentUser;

  FixtureDetailsTabs({
    super.key,
    required this.response,
    required this.index,
    this.currentUser,
  });

  @override
  State<FixtureDetailsTabs> createState() => _FixtureDetailsTabsState();
}

class _FixtureDetailsTabsState extends State<FixtureDetailsTabs> {
  final ApiService apiService = ApiService();
  StatisticsModel? _statisticsModel;
  HeadToHeadModel? _headToHeadModel;
  LineupModel? _lineupModel;

  int _fixtureId = 0;

  bool isLoading = true;

  // Get stats data
  Future<void> _getStatisticsData(String fixtureId) async {
    final StatisticsModel? statisticsModel =
    await apiService.getStatistics(fixture: fixtureId);
    setState(() {
      isLoading = false;
      _statisticsModel = statisticsModel;
    });
  }

  // Get head to head data
  Future<void> _getHeadToHeadData(String home, String away) async {
    final HeadToHeadModel? headToHeadModel =
    await apiService.getHeadToHead(home: home, away: away);
    setState(() {
      isLoading = false;
      _headToHeadModel = headToHeadModel;
    });
  }

  // Get head to head data
  Future<void> _getLineupData(String fixtureId) async {
    final LineupModel? lineupModel =
    await apiService.getLineup(fixture: fixtureId);
    setState(() {
      isLoading = false;
      _lineupModel = lineupModel;
    });
  }

  @override
  void initState() {
    super.initState();
    _fixtureId = widget.response[widget.index].fixture.id ?? 0;

    // Get home and away ids from fixture response object with index that we got from the original home screen
    String _home = widget.response[widget.index].teams.home.id.toString();
    String _away = widget.response[widget.index].teams.away.id.toString();

    _getStatisticsData(_fixtureId.toString());
    _getHeadToHeadData(_home, _away);
    _getLineupData(_fixtureId.toString());
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: null),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(getHeight(context) / 4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: FixtureCard(widget.response, context, widget.index,
                        currentUser: widget.currentUser,
                        isStatistics: true) ??
                        Text("Null"),
                  ),
                  const TabBar(
                    isScrollable: true, // Enable horizontal scrolling for tabs
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(text: 'PREDICT'),
                      Tab(text: 'LINEUP'),
                      Tab(text: 'STATS'),
                      Tab(text: 'H2H'),
                      Tab(text: 'STANDING'),
                    ],
                  ),
                ],
              ),
            ),
            title: const Text('Match Statistics'),
          ),
          floatingActionButton: FloatingActionButton(
            //Floating action button on Scaffold
            onPressed: () {
              int _id = widget.response[widget.index].fixture.id ?? 0;
              showModalBottomSheet(
                elevation: 10,
                isScrollControlled: true,
                enableDrag: true,
                //showDragHandle: true,
                useSafeArea: true,
                isDismissible: true,
                context: context,
                builder: (BuildContext context) {
                  return ChatScreen(
                      currentUser: widget.currentUser,
                      sessionId: _id.toString());
                },
              );
            },
            child: Icon(Icons.chat), //icon inside button
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: TabBarView(
              children: [
                // Predict tab
                PredictScreen(response: widget.response,
                  context: context,
                  index: widget.index,),
                // Lineup tab
                LineupTab(
                  lineupModel: _lineupModel!
                ),
                // Stats tab
                Column(
                  children: [
                    Expanded(
                      child: _statisticsModel == null ||
                          _statisticsModel?.response.isEmpty == true ||
                          _statisticsModel
                              ?.response[0].statistics?.isEmpty ==
                              true
                          ? Center(
                        child: Text("No statistics found"),
                      )
                          : Card(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: _statisticsModel
                                ?.response[0].statistics?.length,
                            itemBuilder:
                                (BuildContext context, int _statIndex) {
                              return isLoading
                                  ? Center(
                                child: LoadingCard(height: 150),
                              )
                                  : ListTile(
                                title: StatisticRow(
                                    _statisticsModel,
                                    context,
                                    _statIndex) ??
                                    Text("Null"),
                              );
                            }),
                      ),
                    )
                  ],
                ),
                // H2H tab
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: _headToHeadModel?.response.length,
                      itemBuilder: (BuildContext context, int index) {
                        return isLoading
                            ? Center(
                          child: LoadingCard(height: 150),
                        )
                            : ListTile(
                            title: FixtureCard(_headToHeadModel!.response,
                                context, index));
                      }),
                ),
                FootballStandingsScreen(
                ),
              ],
            ),
          ),
       ),

      ),
    );
  }
}
