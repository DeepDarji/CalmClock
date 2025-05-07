import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CalmingAnimation extends StatelessWidget {
  final String animationPath;
  const CalmingAnimation({required this.animationPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(animationPath, repeat: true),
    );
  }
}