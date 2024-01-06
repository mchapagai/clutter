import 'package:clutter/features/examples/workout_details_presenter.dart';
import 'package:clutter/navigation/page_route_transition.dart';
import 'package:clutter/ui_kit/app_bar/minimal_app_bar.dart';
import 'package:clutter/ui_kit/clutter_tile.dart';
import 'package:flutter/material.dart';

class WorkoutPresenter extends StatelessWidget {
  const WorkoutPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MinimalAppBar(
        'Workout Routines',
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClutterTile(
                  '4 SETS  | 12 REPS',
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteTransition(
                        destination: const WorkoutDetailsPresenter(),
                      ),
                    );
                  },
                  subtitle: 'Smith Machine Hip Thrust',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
