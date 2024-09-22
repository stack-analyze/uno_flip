import 'package:flutter/material.dart';
import 'package:uno_flip/data/route.dart';

class NavDestination extends StatelessWidget{
  final Path route;

  const NavDestination({super.key, required this.route});

  @override
  Widget build(BuildContext context) => NavigationDestination(
      icon: Icon(route.icon), label: route.name,
  );
}