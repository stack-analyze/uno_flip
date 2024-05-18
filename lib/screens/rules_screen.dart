import 'package:flutter/material.dart';
import 'package:uno_flip/data/rules.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: unoFlipRules.length,
        separatorBuilder: (ctx, i) => const Divider(),
        itemBuilder: (ctx, i) => ListTile(
          leading: Image.asset(
            unoFlipRules[i].card,
            fit: BoxFit.fill,
          ),
          title: Text(unoFlipRules[i].title),
          subtitle: Text(unoFlipRules[i].desc),
        ),
      );
}
