import 'package:clutter/features/demo/travel/ui/travel_screen.dart';
import 'package:clutter/navigation/page_route.dart';
import 'package:clutter/references/awesom_flutter_layouts/ui/awesome_main.dart';
import 'package:clutter/references/awesome_flutter/home_page.dart';
import 'package:clutter/references/flutter_movies/flutter_movies_main.dart';
import 'package:clutter/references/movies/movies_main.dart';
import 'package:clutter/references/pagination/pagination_main.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEMO'),
      ),
      body: ListView(
        children: [
          _button(
            'Travel',
            () => pushWidgetWithFade(
              context,
              TravelScreen(),
            ),
          ),
          _button(
            'Awesome Flutter Layout',
            () => pushWidgetWithFade(
              context,
              AwesomeFlutterLayout(),
            ),
          ),
          _button(
            'Flutter Movies',
            () => pushWidgetWithFade(
              context,
              FlutterMovies(),
            ),
          ),
          _button(
            'Movies',
            () => pushWidgetWithFade(
              context,
              MoviesMainApp(),
            ),
          ),
          _button(
            'Pagination',
            () => pushWidgetWithFade(
              context,
              PaginationMain(),
            ),
          ),
          _button(
            'Awesome Flutter',
            () => pushWidgetWithFade(
              context,
              AwesomeHomePage(),
            ),
          ),
        ],
      ),
    );
  }

  _button(String label, Function()? onTap) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(label),
    );
  }
}
