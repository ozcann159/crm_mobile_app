import 'package:crm_mobile_app/screens/menu_screen.dart';
import 'package:crm_mobile_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketingScreen extends StatelessWidget {
  const MarketingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: AppBar(
            backgroundColor: backgroundColor,
            title: const Text(
              'Marketing',
            ),
            centerTitle: true,
            titleTextStyle: const TextStyle(
              color: appbarColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: const IconThemeData(color: Colors.red),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuScreen(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.back),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  print('Create');
                },
                child: Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
