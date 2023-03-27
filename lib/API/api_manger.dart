import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:goat_app/models/soccer.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Team> _teams = [];
  static final dio = Dio();
  static final id = "33";
  static final url = 'https://v3.football.api-sports.io/teams?id=33';
  static final apiKey = 'cad2a28d9c7384611d1aaaf4643623a2';

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {'x-apisports-key': apiKey},
        ),
      );
      final List<dynamic> list = response.data["response"];
      setState(() {
        _teams = list.map((e) => Team.fromJson(e)).toList();
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: _teams.length,
          itemBuilder: (BuildContext context, int index) {
            final team = _teams[index];
            return ListTile(
              title: Text(team.name!),
              subtitle: Text(team.country!),
            );
          },
        ),
      ),
    );
  }
}
