import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uno_flip/data/route.dart';
import 'package:uno_flip/screens/about_screen.dart';
import 'package:uno_flip/screens/counter_screen.dart';
import 'package:uno_flip/screens/rules_screen.dart';
import 'package:uno_flip/states/dark_mode.dart';
import 'package:uno_flip/widgets/nav_destination.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<DarkMode>(context);

    IconData iconTheme =
    isDarkMode.value ? Icons.dark_mode_outlined : Icons.light_mode_outlined;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UNO Flip!!"),
        forceMaterialTransparency: true,
        actions: [
          IconButton(
              onPressed: isDarkMode.toggleTheme, icon: Icon(iconTheme))
        ],

      ),
      body: switch(currentPage) {
        0 => const RulesScreen(),
        1 => const CounterScreen(),
        2 => const AboutScreen(),
      // TODO: Handle this case.
        int() => throw UnimplementedError(),
      },
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPage,
        onDestinationSelected: (value) {
          setState(() => currentPage = value);
        },
        destinations:
        routes.map((route) => NavDestination(route: route)).toList(),
      ),
    );
  }
}
