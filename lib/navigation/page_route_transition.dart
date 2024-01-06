import 'package:flutter/material.dart';

/// Create a transition that fades in the new view, while fading out background
///
/// ```dart
/// Navigator.push(context, PageRouteTransition(
///   destination: DestinationWidget(),
///  )
/// );
/// ```

class PageRouteTransition extends PageRouteBuilder {
  final Widget destination;

  PageRouteTransition({required this.destination})
      : super(
          transitionDuration: const Duration(milliseconds: 1700),
          pageBuilder: (context, animation, secondaryAnimation) => destination,
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            var fadeIn = Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(
                curve: const Interval(.7, 1),
                parent: animation,
              ),
            );
            var fadeOut = Tween<double>(begin: 0, end: 1).animate(
              CurvedAnimation(
                curve: const Interval(0, .2),
                parent: animation,
              ),
            );
            return Stack(
              children: [
                FadeTransition(
                  opacity: fadeOut,
                  child: Container(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                FadeTransition(
                  opacity: fadeIn,
                  child: child,
                )
              ],
            );
          },
        );
}
