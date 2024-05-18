import 'package:flutter/material.dart';

class Menu {
  final IconData icon;
  final String label;

  Menu(this.icon, this.label);
}

List<Menu> menuItems = [
  Menu(Icons.library_books_outlined, "rules"),
  Menu(Icons.import_export_outlined, "game"),
  Menu(Icons.person_outline, "about")
];
