import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/feed/logic/api_service.dart';
import 'package:goat_app/features/feed/presentation/widgets/loading_card.dart';
import 'package:goat_app/features/feed/presentation/widgets/search_card.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/user.dart';
class FavouriteTeam extends StatefulWidget {
  UserModel? currentUser;
   FavouriteTeam({Key? key, this.currentUser}) : super(key: key);

  @override
  State<FavouriteTeam> createState() => _FavouriteTeamState();
}

class _FavouriteTeamState extends State<FavouriteTeam> {

  List<Widget?> widgets = [];
  bool isLoading = true;
  TeamModel? _teamsearch;
  List<TeamModel> teamResponse = [];

  Future<void> getTeamDetails(String value) async {
    final ApiService apiService = ApiService();
    final TeamModel? teamsearch = await apiService.getTeamDetails(name: value);
    // print('hello');

    if (mounted) {
      setState(() {
        isLoading = false;
        _teamsearch = teamsearch;


        _teamsearch!.response.forEach((element) {
          widgets.add(SearchCard(widget.currentUser, _teamsearch!.response, context,widgets.length));
        });

      });
    }
  }
  TextEditingController search = TextEditingController();
  String textfieldValue = "";

  @override
  void initState(){
    super.initState();
    search = TextEditingController();
  }

  @override
  void dispose()
  {
    search.clear();
    widgets.clear();
  }


  Widget? _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: TextField(

        decoration: InputDecoration(
          labelText: 'Search'
        ),
        controller: search,
        onChanged: (value){
          setState(() {
            textfieldValue = value;
          });
        },
      ),
      leading: new IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          this.dispose();
          // getTeamDetails();
        },
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      //theme: mainTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: _buildBar(context)!,
        ),
        body:
        Column(
          children: [
        Expanded(
        child: ListView.builder(
        itemCount: widgets.length,
          itemBuilder: (context, index) {
            return widgets[index];
          },
        ),
      ),
    ElevatedButton(
    child: Text('SEARCH'),
    onPressed:(){

      getTeamDetails(textfieldValue);

    }
    ),
    ],
        ),
      )
      );

  }
}



