import 'package:clutter/navigation/routes.dart';
import 'package:clutter/ui_kit/clutter_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class ClutterApplication extends StatelessWidget {
  const ClutterApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: kReleaseMode ? false : true,
          navigatorKey: navigatorKey,
          initialRoute: Routes.initialRoute,
          routes: Routes.setupRoutes,
          theme: ClutterTheme.darkTheme,
        );
      },
    );
  }
}
