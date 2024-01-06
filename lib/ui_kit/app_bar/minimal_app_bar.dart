import 'package:flutter/material.dart';

class MinimalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MinimalAppBar(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
