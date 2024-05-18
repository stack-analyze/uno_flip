import 'package:flutter/material.dart';
import 'package:uno_flip/data/menu.dart';
import 'package:uno_flip/screens/about_screen.dart';
import 'package:uno_flip/screens/game_screen.dart';
import 'package:uno_flip/screens/rules_screen.dart';
import 'package:uno_flip/themes/theme.dart';
import 'package:uno_flip/widgets/menubar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static String title = "Uno flip!";

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }

  int currentPageIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    IconData iconTheme =
        isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined;

    Widget options(int index) => switch (index) {
          0 => const RulesScreen(),
          1 => GameScreen(isDarkMethods: isDark),
          _ => const AboutScreen(),
        };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyApp.title,
      theme: ThemeData(
        colorScheme: themeColors(isDark),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.primary,
          automaticallyImplyLeading: false,
          title: Text(MyApp.title),
          actions: [IconButton(onPressed: toggleTheme, icon: Icon(iconTheme))],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Theme.of(context).colorScheme.primary,
          selectedIndex: currentPageIndex,
          destinations:
              menuItems.map((item) => NavigationMenu(menuItem: item)).toList(),
        ),
        body: options(currentPageIndex),
      ),
    );
  }
}
