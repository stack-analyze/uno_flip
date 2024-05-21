import 'package:flutter/material.dart';
import 'package:uno_flip/data/rules.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: unoFlipRules.length,
        separatorBuilder: (ctx, i) => const Divider(),
        itemBuilder: (ctx, i) => Row(
        	children: [
        		Image.asset(
        			unoFlipRules[i].card, 
        			fit: BoxFit.cover,
        			height: 100.0
        		),
        		Flexible(
        			child: ListTile(
        			title: Text(unoFlipRules[i].title),
        			subtitle: Text(unoFlipRules[i].desc),
        			)
        		),
        		if (unoFlipRules[i].altCard != null) Image.asset(
        			unoFlipRules[i].altCard!,
        			fit: BoxFit.cover,
        			height: 100.0
        		)
        	]
        ),
      );
}
