import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chatgpt_tutorial_yt/core/navigator/named_routes.dart';
import 'package:flutter_chatgpt_tutorial_yt/core/navigator/navigator.dart';
import 'package:flutter_chatgpt_tutorial_yt/core/resources/assets_manager.dart';
import 'package:flutter_chatgpt_tutorial_yt/core/resources/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  void _goNext() async {
    Go.toNamed(NamedRoutes.onBoarding);
  }

  @override
  void dispose() {
    _timer.cancel();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Image.asset(AssetsManager.logo, fit: BoxFit.contain)),
    );
  }
}