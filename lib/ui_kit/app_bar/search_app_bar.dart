import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    required this.title,
    required this.onTapSearch,
    required this.onTapFavorite,
    required this.onTapSort,
  });

  final VoidCallback? onTapSearch;
  final VoidCallback? onTapFavorite;
  final VoidCallback? onTapSort;
  final String title;

  @override
  Widget build(BuildContext context) {
    final iconTheme = Theme.of(context).colorScheme.onPrimary;
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      iconTheme: IconThemeData(
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: onTapSearch,
          icon: Icon(Icons.search, color: iconTheme),
        ),
        IconButton(
          onPressed: onTapFavorite,
          icon: Icon(Icons.favorite, color: iconTheme),
        ),
        IconButton(
          onPressed: onTapSort,
          icon: Icon(Icons.sort, color: iconTheme),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
