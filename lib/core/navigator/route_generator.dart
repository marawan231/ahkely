import 'package:ahkeely/features/login/login_screen.dart';
import 'package:ahkeely/features/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:ahkeely/features/home/home_screen.dart';
import 'package:ahkeely/features/onBoarding/onboarding_screen.dart';
import 'package:ahkeely/features/splash/splash_screen.dart';

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

      case NamedRoutes.login:
        return _pageRouter.build(const LoginScreen(), settings: settings);
      //register
      case NamedRoutes.register:
        return _pageRouter.build(const RegisterScreen(), settings: settings);
      //
    }
  }
}
