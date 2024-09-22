import 'package:flutter/material.dart';
import 'package:uno_flip/icons/github_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  void openLink(String link) {
    launchUrl(Uri.parse(link));
  }

  // "https://github.com/stack-analyze/uno_flip"

  @override
  Widget build(BuildContext context) => Center(
    child: Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "images/uno_flip.webp",
            height: 200.0,
          ),
          const Text("UNO flip"),
          const Text("creado por omega5300"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  openLink("https://github.com/stack-analyze/uno_flip");
                }, 
                icon: const Icon(StackIcons.mark_github)
              ),
              IconButton(
                onPressed: () {
                  openLink("https://stackshare.io/stack-analyze/uno-flip");
                }, 
                icon: const Icon(Icons.share)
              )
            ],
          )
        ]
      ),
      ),
    ),
  );
}