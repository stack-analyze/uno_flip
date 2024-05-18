import 'package:flutter/material.dart';
import 'package:uno_flip/widgets/Player.dart';

class GameScreen extends StatefulWidget {
  final bool isDarkMethods;

  const GameScreen({super.key, required this.isDarkMethods});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int players = 0;

  List<int> selectPlayers = [0, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("número de jugadores"),
                  DropdownButton(
                    value: players,
                    items: selectPlayers
                        .map((i) => DropdownMenuItem(
                              value: i,
                              child: Text(i == 0 ? "Sin jugadores" : "$i jugadores"),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        players = value!;
                      });
                    },
                  )
                ],
              )),
              Flexible(child: ListView.builder(
                itemCount: players,
                itemBuilder: (ctx, i) => Player(
                  position: (i + 1),
                  isDarkMethods: widget.isDarkMethods,
                )))
          /* ListView.builder(
            itemCount: players,
            itemBuilder: (ctx, i) => Player(
              position: (i + 1),
              isDarkMethods: widget.isDarkMethods,
            ),
          ) */
        ],
      );
}
