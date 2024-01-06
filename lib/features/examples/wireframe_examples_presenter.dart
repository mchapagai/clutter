import 'package:clutter/application/clutter_application_tile.dart';
import 'package:clutter/features/examples/workout_routine_presenter.dart';
import 'package:clutter/navigation/page_route_transition.dart';
import 'package:flutter/material.dart';

class SampleWireframesPresenter extends StatelessWidget {
  const SampleWireframesPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Routines'),
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
                  'Workout Routine',
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteTransition(
                        destination: const WorkoutPresenter(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
