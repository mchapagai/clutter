import 'package:flutter/material.dart';

class WorkoutDetailsPresenter extends StatelessWidget {
  const WorkoutDetailsPresenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Smith Machine Hip Thrust'),
        ),
        body: Column(
          children: [
            Text(
              'Instructions',
              style: Theme.of(context).primaryTextTheme.titleMedium,
            ),
            const Text('Add the details instructions'),
          ],
        ));
  }
}
