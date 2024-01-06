import 'package:flutter/material.dart';

class ClutterTile extends StatelessWidget {
  const ClutterTile(
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
      child: ListTile(
        leading: CircleAvatar(
            child: ClipOval(
          child: Image.asset('assets/clutter_logo.png'),
        )),
        title: Text(
          title,
          style:
              Theme.of(context).textTheme.bodySmall?.copyWith(letterSpacing: 2),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle ?? '',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      letterSpacing: 2,
                    ),
              )
            : const Opacity(opacity: 0.0),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
