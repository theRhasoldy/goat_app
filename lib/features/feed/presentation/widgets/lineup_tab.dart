// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:ditredi/ditredi.dart';
import 'package:flutter/material.dart';
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
  var controller = DiTreDiController();
  var _playersHome;
  var _playersAway;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playersHome = _generateCubes(widget.lineupModel, 0);
    _playersAway = _generateCubesOpposite(widget.lineupModel, 1);
  }

  @override
  Widget build(BuildContext context) {
    return DiTreDiDraggable(
        controller: controller,
        child: DiTreDi(
          figures: [
            Group3D(_playersHome.toList()),
            Group3D(_playersAway.toList())
          ],
          controller: controller,
        ));
  }
}

Iterable<Cube3D> _generateCubes(LineupModel lineupModel, int teamIndex) sync* {
  print(lineupModel.response?[teamIndex].formation);
  for (var i = 1; i < 11; i++) {
    List<String>? grid =
        lineupModel.response?[0].startXI?[i].player?.grid?.split(":");

    double x = double.parse(grid![0]) * 2 + teamIndex * 10;
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

    double x = double.parse(grid![0]) * 2 + teamIndex * 10;
    double z = double.parse(grid[1]) * 2;
    yield Cube3D(1, v.Vector3(x, 0, z));
  }
}
