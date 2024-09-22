import 'package:flutter/material.dart';
import 'package:uno_flip/data/rules.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
    padding: const EdgeInsets.all(8.0),
    itemCount: rules.length,
    itemBuilder: (ctx, i) => Row(
      children: [
        if(rules[i].card != null) Image.asset(
          rules[i].card!,
          fit: BoxFit.cover,
          height: 100.0,
        ),
        Flexible(child: ListTile(
          title: Text(rules[i].title),
          subtitle: Text(rules[i].desc),
        )),
        if(rules[i].altCard != null) Image.asset(
          rules[i].altCard!,
          fit: BoxFit.cover,
          height: 100.0,
        ),
      ],
    ),
    separatorBuilder: (context, index) => const Divider(),
  );
}

// Image.asset("images/flip_oscuro.png", height: 180.0,),