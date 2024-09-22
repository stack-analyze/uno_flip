import 'package:flutter/material.dart';

class Path {
  final IconData icon;
  final String name;

  Path(this.icon, this.name);
}

List routes = [
  Path(Icons.library_books_outlined, "reglas",),
  Path(Icons.swap_vert_outlined, "contador",),
  Path(Icons.person_outline, "acerca de",),
];