import 'package:flutter/material.dart';

ColorScheme Function(bool theme) themeColors = (bool theme) => ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 58, 29, 75),
  brightness: theme ? Brightness.dark : Brightness.light,
);
