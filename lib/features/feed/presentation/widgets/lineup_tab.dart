// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:ditredi/ditredi.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/common/utils/media_queries.dart';
import 'package:goat_app/features/feed/presentation/widgets/loading_card.dart';
import 'package:goat_app/models/lineup_model.dart';
import 'package:goat_app/models/player_model.dart';
import 'package:vector_math/vector_math_64.dart' as v;

class LineupTab extends StatefulWidget {
  final LineupModel lineupModel;

  LineupTab({
    required this.lineupModel,
  });

  @override
  State<LineupTab> createState() => _LineupTabState();
}

class _LineupTabState extends State<LineupTab> {
  var controller = DiTreDiController(
      modelScale: 3,
      viewScale: 3,
      userScale: 3,
      minUserScale: 2,
      maxUserScale: 4);
  var _playersHome;
  var _playersAway;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playersHome = _generateCubes(widget.lineupModel, 0);
    _playersAway = _generateCubesOpposite(widget.lineupModel, 1);
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return DiTreDiDraggable(
      controller: controller,
      child: Column(
        children: [
          Container(
            height: getHeight(context) / 5,
            child: DiTreDi(
              figures: [
                Group3D(_playersHome.toList()),
                Group3D(_playersAway.toList())
              ],
              controller: controller,
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Starting XI",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Card(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.lineupModel.response?[0].startXI!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return isLoading
                          ? Center(
                              child: LoadingCard(height: 150),
                            )
                          : ListTile(
                              title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(widget.lineupModel.response?[0]
                                            .startXI?[index].player?.number
                                            .toString() ??
                                        "0"),
                                    SizedBox(width: 10),
                                    Text(widget.lineupModel.response?[0]
                                            .startXI?[index].player?.name
                                            .toString() ??
                                        "0"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(widget.lineupModel.response?[1]
                                            .startXI?[index].player?.name
                                            .toString() ??
                                        "0"),
                                    SizedBox(width: 10),
                                    Text(widget.lineupModel.response?[1]
                                            .startXI?[index].player?.number
                                            .toString() ??
                                        "0"),
                                  ],
                                ),
                              ],
                            ));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Substitutes",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Card(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:
                        widget.lineupModel.response?[0].substitutes!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return isLoading
                          ? Center(
                              child: LoadingCard(height: 150),
                            )
                          : ListTile(
                              title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(widget.lineupModel.response?[0]
                                            .substitutes?[index].player?.number
                                            .toString() ??
                                        "0"),
                                    SizedBox(width: 10),
                                    Text(widget.lineupModel.response?[0]
                                            .substitutes?[index].player?.name
                                            .toString() ??
                                        "0"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(widget.lineupModel.response?[1]
                                            .substitutes?[index].player?.name
                                            .toString() ??
                                        "0"),
                                    SizedBox(width: 10),
                                    Text(widget.lineupModel.response?[1]
                                            .substitutes?[index].player?.number
                                            .toString() ??
                                        "0"),
                                  ],
                                ),
                              ],
                            ));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Coaches",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Row(children: [
                Text(widget.lineupModel.response?[1].coach.toString() ?? ""),
              ]),
            ]),
          ))
        ],
      ),
    );
  }
}

Iterable<Cube3D> _generateCubes(LineupModel lineupModel, int teamIndex) sync* {
  print(lineupModel.response?[teamIndex].formation);
  for (var i = 1; i < 11; i++) {
    List<String>? grid =
        lineupModel.response?[0].startXI?[i].player?.grid?.split(":");

    double x = (double.parse(grid![0]) * 2 + teamIndex * 10) - 35;
    double z = double.parse(grid[1]) * 2;
    yield Cube3D(1, v.Vector3(x, 0, z));
  }
}

Iterable<Cube3D> _generateCubesOpposite(
    LineupModel lineupModel, int teamIndex) sync* {
  print(lineupModel.response?[teamIndex].formation);
  for (var i = 1; i < 11; i++) {
    List<String>? grid =
        lineupModel.response?[1].startXI?[i].player?.grid?.split(":");

    double x = (double.parse(grid![0]) * 2 + teamIndex * 10) * -1;
    double z = double.parse(grid[1]) * 2;
    yield Cube3D(1, v.Vector3(x, 0, z));
  }
}
