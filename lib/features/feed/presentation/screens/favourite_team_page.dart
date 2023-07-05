import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
import 'package:goat_app/features/feed/logic/api_service.dart';
import 'package:goat_app/models/freezed_model.dart';
class FavouriteTeam extends StatefulWidget {
   FavouriteTeam({Key? key}) : super(key: key);

  @override
  State<FavouriteTeam> createState() => _FavouriteTeamState();
}

class _FavouriteTeamState extends State<FavouriteTeam> {
  //Team? _team;
  Future<void> getTeamDetails() async {
    final ApiService apiService = ApiService();
    apiService.getTeamDetails();
    final TeamModel? fixtureModel = await apiService.getTeamDetails();
   // print('hello');
    if (mounted) {
      setState(() {
       //isLoading = false;
      // _team = fixtureModel as Team?;
      });
    }
  }
  _FavouriteTeamState(){
    _filter.addListener(() {
      if(_filter.text.isEmpty){
        setState(() {
          _searchText="";
          filteredNames=names;
        });
      }
      else{
        setState(() {
          _searchText=_filter.text;
        });
      }
    });
  }
  final TextEditingController _filter=new TextEditingController();
  String _searchText="";
  List names=[];
  List filteredNames=[];
  Icon _searchIcon=new Icon(Icons.search);
  Widget _appBarTitle=new Text('Favourite Team');
  void _searchPressed(){
    setState(() {
      if(this._searchIcon.icon==Icons.search){

        this._searchIcon=new Icon(Icons.close);
        this._appBarTitle=new TextField(
          controller: _filter,
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),hintText: 'Search...'
          ),
        );
      }
      else{
        this._searchIcon=new Icon(Icons.search);
        this._appBarTitle=new Text('Favourite Team');
        filteredNames=names;
        _filter.clear();
      }
    });
  }
  Widget? _bulidList() {
    if (!(_searchText.isEmpty)) {
      List tempList = [];
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i]['name'].toLowerCase().contains(
            _searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return ListView.builder(itemCount: names==null?0:filteredNames.length,
      itemBuilder: (BuildContext context,int index){
      return new ListTile(
        title: Text(filteredNames[index]['name']),
        onTap: () => print(filteredNames[index]['name']),
      );
      }
    );
  }
  Widget? _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: _appBarTitle,
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    getTeamDetails();
    return  MaterialApp(
      //theme: mainTheme,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: _buildBar(context)!,
        ),
        body: Container(
          child: _bulidList(),
        ),
        resizeToAvoidBottomInset: false
        ,
       ),
      );

  }
}



