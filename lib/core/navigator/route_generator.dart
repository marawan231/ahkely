import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_tutorial_yt/features/home/home_screen.dart';
import 'package:flutter_chatgpt_tutorial_yt/features/onBoarding/onboarding_screen.dart';
import 'package:flutter_chatgpt_tutorial_yt/features/splash/splash_screen.dart';

import 'named_routes.dart';
import 'page_router/imports_page_router_builder.dart';

class RouterGenerator {
  // ignore: empty_constructor_bodies
  RouterGenerator() {}

  static final PageRouterBuilder _pageRouter = PageRouterBuilder();

  Route<dynamic> getRoute(RouteSettings settings) {
    final namedRoute =
        NamedRoutes.values.firstWhere((e) => e.routeName == settings.name);
    switch (namedRoute) {
      case NamedRoutes.splash:
        return _pageRouter.build(const SplashView(), settings: settings);
      //onBoarding
      case NamedRoutes.onBoarding:
        return _pageRouter.build(const OnboardingScreen(), settings: settings);
      //home
      case NamedRoutes.home:
        return _pageRouter.build(const HomeScreen(), settings: settings);
      //
    }
  }
}
