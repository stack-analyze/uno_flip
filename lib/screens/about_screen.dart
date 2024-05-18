import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) => Center(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/uno_flip.webp", fit: BoxFit.fill,
            height: 250.0,
          ),
          const Text(
            "Uno Flip!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0
            ),
          ),
          const Text(
            "Desarrollado por omega5300",
            style: TextStyle(
              fontSize: 15.0,
            )
          ),
        ],
      )
      ),
    ),
  );
}