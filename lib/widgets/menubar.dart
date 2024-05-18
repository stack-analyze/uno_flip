import 'package:flutter/material.dart';
import 'package:uno_flip/data/menu.dart';

class NavigationMenu extends StatelessWidget {
  final Menu menuItem;

  const NavigationMenu({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) => NavigationDestination(
    icon: Icon(menuItem.icon), label: menuItem.label,
  );
}
