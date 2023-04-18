import 'package:flutter/material.dart';
import 'package:goat_app/common/config/theme.dart';
class Statistics extends StatelessWidget {
  int? id;
  Statistics({Key? key,this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Text('PREDICT',style: TextStyle(color: Colors.black)),
                Text('LINEUP',style: TextStyle(color: Colors.black)),
                Text('STATS',style: TextStyle(color: Colors.black)),
                Text('H2H',style: TextStyle(color: Colors.black))
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
