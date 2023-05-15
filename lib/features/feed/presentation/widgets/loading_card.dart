import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  final double height;
  const LoadingCard({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardLoading(
      height: height,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    );
  }
}
