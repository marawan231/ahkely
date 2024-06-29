import 'package:ahkeely/core/navigator/named_routes.dart';
import 'package:ahkeely/core/navigator/navigator.dart';
import 'package:ahkeely/core/navigator/route_generator.dart';
import 'package:ahkeely/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    RouterGenerator routeGenerator = RouterGenerator();

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        ensureScreenSize: true,
        useInheritedMediaQuery: true,
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              // localizationsDelegates: const [
              //   S.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              //   // MonthYearPickerLocalizations.delegate,
              // ],
              // supportedLocales: S.delegate.supportedLocales,
              locale: const Locale('en'),
              theme: appTheme,
              title: 'Ehkeely',
              navigatorKey: Go.navigatorKey,
              onGenerateRoute: routeGenerator.getRoute,
              initialRoute: NamedRoutes.splash.routeName,
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: child!,
                );
              },
            ));
  }
}
