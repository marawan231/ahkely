import 'dart:developer';

import 'package:flutter/material.dart';

class AppNavigationObserver extends RouteObserver<ModalRoute<dynamic>> {
  //log every route
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    //log from to
    log('Route: ${previousRoute?.settings.name} -> ${route.settings.name}');
  }
}
