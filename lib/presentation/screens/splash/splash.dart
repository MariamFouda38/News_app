import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/core/assets_manager.dart';

import '../../../core/routes_manager.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
          () {
        Navigator.pushReplacementNamed(context,
            RoutesManager.Home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsManager.backgroungPattren, width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover)
      ],);

  }
}
