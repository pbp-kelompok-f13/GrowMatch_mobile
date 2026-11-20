import 'package:flutter/material.dart';

import '../config/routes.dart';
import '../config/theme.dart';

class GrowMatchDrawer extends StatelessWidget {
  const GrowMatchDrawer({
    super.key,
    required this.selectedTabIndex,
    required this.onSelectTab,
  });

  final int selectedTabIndex;
  final ValueChanged<int> onSelectTab;

  void _navigateTab(BuildContext context, int index) {
    Navigator.of(context).pop();
    onSelectTab(index);
  }

  void _navigateRoute(BuildContext context, String routeName) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: GrowMatchColors.paper,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              decoration: const BoxDecoration(
                color: GrowMatchColors.primary10,
                border: Border(
                  bottom: BorderSide(color: GrowMatchColors.primary20),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            _DrawerItem(
              icon: Icons.home_outlined,
              label: 'Home',
              selected: selectedTabIndex == 0,
              onTap: () => _navigateTab(context, 0),
            ),
            _DrawerItem(
              icon: Icons.local_florist_outlined,
              label: 'Plant Catalog',
              selected: selectedTabIndex == 1,
              onTap: () => _navigateTab(context, 1),
            ),
            _DrawerItem(
              icon: Icons.auto_awesome_outlined,
              label: 'Plant Recommendation',
              selected: selectedTabIndex == 2,
              onTap: () => _navigateTab(context, 2),
            ),
            _DrawerItem(
              icon: Icons.yard_outlined,
              label: 'My Garden',
              selected: selectedTabIndex == 3,
              onTap: () => _navigateTab(context, 3),
            ),
            _DrawerItem(
              icon: Icons.person_outline_rounded,
              label: 'Profile',
              selected: selectedTabIndex == 4,
              onTap: () => _navigateTab(context, 4),
            ),
            const Divider(indent: 16, endIndent: 16),
            _DrawerItem(
              icon: Icons.water_drop_outlined,
              label: 'Care Log',
              onTap: () => _navigateRoute(context, AppRoutes.careLog),
            ),
            _DrawerItem(
              icon: Icons.rate_review_outlined,
              label: 'Plant Reviews',
              onTap: () => _navigateRoute(context, AppRoutes.reviews),
            ),
            const Divider(indent: 16, endIndent: 16),
            _DrawerItem(
              icon: Icons.login_rounded,
              label: 'Login',
              onTap: () => _navigateRoute(context, AppRoutes.login),
            ),
            _DrawerItem(
              icon: Icons.person_add_outlined,
              label: 'Register',
              onTap: () => _navigateRoute(context, AppRoutes.register),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.selected = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: selected
            ? GrowMatchColors.primaryBase
            : GrowMatchColors.primary50,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          color: GrowMatchColors.ink,
        ),
      ),
      selected: selected,
      selectedTileColor: GrowMatchColors.secondary20,
      onTap: onTap,
    );
  }
}
