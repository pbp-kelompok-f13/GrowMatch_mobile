import 'package:flutter/material.dart';

import '../config/theme.dart';
import '../modules/auth/screens/profile_page.dart';
import '../modules/catalog/screens/catalog_page.dart';
import '../modules/garden/screens/my_garden_page.dart';
import '../modules/home/screens/home_page.dart';
import '../modules/recommendation/screens/recommendation_page.dart';
import 'growmatch_drawer.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  late int _selectedIndex;

  static const List<String> _tabTitles = [
    'GrowMatch',
    'Plant Catalog',
    'Plant Recommendation',
    'My Garden',
    'Profile',
  ];

  static const List<Widget> _pages = [
    HomePage(),
    CatalogPage(),
    RecommendationPage(),
    MyGardenPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _selectTab(int index) {
    if (index == _selectedIndex) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedIndex == 0
            ? Image.asset(
                'assets/images/logo.png',
                height: 26,
                fit: BoxFit.contain,
              )
            : Text(_tabTitles[_selectedIndex]),
      ),
      drawer: GrowMatchDrawer(
        selectedTabIndex: _selectedIndex,
        onSelectTab: _selectTab,
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: GrowMatchColors.primary20)),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _selectTab,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.local_florist_outlined),
              selectedIcon: Icon(Icons.local_florist_rounded),
              label: 'Catalog',
            ),
            NavigationDestination(
              icon: Icon(Icons.auto_awesome_outlined),
              selectedIcon: Icon(Icons.auto_awesome_rounded),
              label: 'Recommend',
            ),
            NavigationDestination(
              icon: Icon(Icons.yard_outlined),
              selectedIcon: Icon(Icons.yard_rounded),
              label: 'Garden',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline_rounded),
              selectedIcon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
