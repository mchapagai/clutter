import 'package:clutter/application/application_strings.dart';
import 'package:clutter/application/clutter_application_tile.dart';
import 'package:clutter/features/examples/wireframe_examples_presenter.dart';
import 'package:clutter/features/tmdb/ui/tmdb_presenter.dart';
import 'package:clutter/navigation/page_route_transition.dart';
import 'package:flutter/material.dart';

class ClutterApplicationScreen extends StatelessWidget {
  const ClutterApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clutter'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeScreenTile(
                  tmdbTitle,
                  subtitle: tmdbSubtitle,
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteTransition(
                        destination: const TMDBPresenter(),
                      ),
                    );
                  },
                ),
                HomeScreenTile(
                  'UI Kit',
                  subtitle: 'Various UI implementations and wireframes',
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteTransition(
                        destination: const SampleWireframesPresenter(),
                      ),
                    );
                  },
                ),
                HomeScreenTile(
                  'title 1',
                  subtitle: 'subtitle',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
