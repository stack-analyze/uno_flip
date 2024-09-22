import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uno_flip/app.dart';
import 'package:uno_flip/states/dark_mode.dart';
import 'package:uno_flip/theme.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DarkMode(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const materialTheme = MaterialTheme(TextTheme());
    final isDarkMode = Provider.of<DarkMode>(context);

    return MaterialApp(
        theme: isDarkMode.value ? materialTheme.dark() : materialTheme.light(),
        debugShowCheckedModeBanner: false,
        home: const App());
  }
}

