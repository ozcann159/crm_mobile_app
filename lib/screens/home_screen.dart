import 'package:crm_mobile_app/screens/menu_screen.dart'; // MenuScreen'i import et
import 'package:crm_mobile_app/utils/constants.dart';
import 'package:crm_mobile_app/widgets/custom_appbar.dart';
import 'package:crm_mobile_app/widgets/custom_bottom_navigation_bar.dart'; // CustomBottomNavigationBar'ı import et
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Sayfa geçiş fonksiyonu
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Sayfa widget'ları
  final List<Widget> _screens = [
    const Center(
      child: Text('Home Screen'),
    ),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: _selectedIndex == 0 ? 'Home' : 'Products'), // Dinamik Appbar
      body: _screens[_selectedIndex],
      backgroundColor: backgroundColor,
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
