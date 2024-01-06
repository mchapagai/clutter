import 'package:flutter/material.dart';

class HomeScreenTile extends StatelessWidget {
  const HomeScreenTile(
    this.title, {
    this.subtitle = '',
    required this.onTap,
    super.key,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Theme.of(context).colorScheme.onSecondary,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(letterSpacing: 2),
          ),
          subtitle: subtitle != null
              ? Text(
                  subtitle ?? '',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        letterSpacing: 2,
                      ),
                )
              : const Opacity(opacity: 0.0),
        ),
      ),
    );
  }
}
