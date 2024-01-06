import 'package:clutter/features/tmdb/ui/tmbd_strings.dart';
import 'package:clutter/ui_kit/app_bar/search_app_bar.dart';
import 'package:flutter/material.dart';

class TMDBPresenter extends StatelessWidget {
  const TMDBPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        title: tmdbTitle,
        onTapSearch: () {},
        onTapFavorite: () {},
        onTapSort: () {},
      ),
      body: Container(),
    );
  }
}
