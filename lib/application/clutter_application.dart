import 'package:clutter/navigation/routes.dart';
import 'package:clutter/ui_kit/cluttter_theme.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class ClutterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          /// Hide the debug banner
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          initialRoute: Routes.initialRoute,
          routes: Routes.setUpRoutes,
          themeMode: ThemeMode.system,
          theme: ClutterTheme.clutterDarkTheme,
        );
      },
    );
  }
}
