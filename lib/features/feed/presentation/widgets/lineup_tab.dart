import 'package:ditredi/ditredi.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class LineupTab extends StatefulWidget {
  const LineupTab({super.key});

  @override
  State<LineupTab> createState() => _LineupTabState();
}

class _LineupTabState extends State<LineupTab> {
  var controller = DiTreDiController();

  @override
  Widget build(BuildContext context) {
    return DiTreDiDraggable(
        controller: controller,
        child: DiTreDi(
          figures: [Cube3D(2, Vector3(0, 0, 0))],
          controller: controller,
        ));
  }
}
