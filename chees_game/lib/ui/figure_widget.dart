import 'package:chees_game/models/figure.dart';
import 'package:flutter/material.dart';

class FigureWidget extends StatelessWidget {
  final Figure figure;

  const FigureWidget({super.key, required this.figure});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      figure.imageAsset,
      fit: BoxFit.fill,
    );
  }
}
