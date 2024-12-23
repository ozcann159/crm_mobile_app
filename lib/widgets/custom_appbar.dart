import 'package:flutter/material.dart';
import 'package:crm_mobile_app/utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: AppBar(
          backgroundColor: backgroundColor,
          title: Text(title),  // Dinamik başlık
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: appbarColor, fontSize: 20, fontWeight: FontWeight.bold),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Divider(color: Colors.grey[400], thickness: 1.0),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
