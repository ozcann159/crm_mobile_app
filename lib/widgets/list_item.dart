import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ListItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.red,
      ),
      onTap: onTap,
    );
  }
}
