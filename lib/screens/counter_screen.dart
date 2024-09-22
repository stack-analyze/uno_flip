import 'package:flutter/material.dart';
import 'package:uno_flip/widgets/player.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  List<int> selectPlayers = [0, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // state
  int totalPlayers = 0;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DropdownButton(
              value: totalPlayers,
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  totalPlayers = value!;
                });
              },
              items: selectPlayers
                  .map((player) => DropdownMenuItem(
                      value: player,
                      child: Text("${player == 0 ? 'sin' : player} jugadores")))
                  .toList()),
          Flexible(
              child: ListView.separated(
            itemBuilder: (ctx, i) => Player(position: i),
            separatorBuilder: (ctx, i) => const Divider(),
            itemCount: totalPlayers,
          ))
        ],
      ));
}
