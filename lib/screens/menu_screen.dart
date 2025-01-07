import 'package:crm_mobile_app/screens/categories_screen.dart';
import 'package:crm_mobile_app/screens/customer_data_management.dart';
import 'package:crm_mobile_app/screens/marketing_screen.dart';
import 'package:crm_mobile_app/screens/sales_process_managament.dart';
import 'package:crm_mobile_app/screens/suppliers.dart';
import 'package:crm_mobile_app/utils/constants.dart';
import 'package:crm_mobile_app/widgets/list_item.dart';
import 'package:crm_mobile_app/widgets/section_header.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            const SectionHeader(title: 'Products'),
            ListItem(
                title: 'Suppliers',
                onTap: () {
                  print("Suppliers clicked");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuppliersScreen(),
                    ),
                  );
                }),
            const Divider(),
            ListItem(
                title: 'Categories',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(),
                    ),
                  );
                }),
            const Divider(),
            const SectionHeader(title: 'CRM'),
            ListItem(
                title: 'Customer Data Management',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerDataScreen(),
                    ),
                  );
                }),
            const Divider(),
            ListItem(
                title: 'Sales Process Management',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SalesProcessScreen(),
                    ),
                  );
                }),
            const Divider(),
            ListItem(
                title: 'Marketing',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarketingScreen(),
                    ),
                  );
                }),
            const Divider(),
            ListItem(title: 'Support and Service Management', onTap: () {}),
            const Divider(),
            const SectionHeader(title: 'Finance'),
            ListItem(title: 'Assets', onTap: () {}),
            const Divider(),
            ListItem(title: 'Accounts', onTap: () {}),
            const Divider(),
            ListItem(title: 'Budgets', onTap: () {}),
            const Divider(),
            ListItem(title: 'Invoices', onTap: () {}),
            const Divider(),
            ListItem(title: 'Journals', onTap: () {}),
            const Divider(),
            ListItem(title: 'Periods', onTap: () {}),
            const Divider(),
            ListItem(title: 'Transfers', onTap: () {}),
            const Divider(),
            ListItem(title: 'Payments', onTap: () {}),
            const Divider(),
            const SectionHeader(title: 'Inventory'),
            ListItem(title: 'Shipments', onTap: () {}),
            const Divider(),
            ListItem(title: 'Inventory Items', onTap: () {}),
            const Divider(),
            ListItem(title: 'Warehouse', onTap: () {}),
            const Divider(),
            ListItem(title: 'Location', onTap: () {}),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
