import 'package:flutter/material.dart';
import 'package:loja_virtual/models/page_manager.dart';
import 'package:provider/provider.dart';

class DrawerTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final int page;

  const DrawerTile({super.key, required this.iconData, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(iconData, color: Colors.grey[700], size: 32),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
