import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  final int position;
  final bool isDarkMethods;

  const Player(
      {super.key, required this.position, required this.isDarkMethods});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  static RegExp inputRegex = RegExp(r'[0-9]');

  int cards = 7;
  String inputValue = "";
  bool validateBtn = false;

  // global methods
  void discardCard(String msg) {
    setState(() => (cards--));

    if (cards == 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }
  }

  void drawCard() {
    setState(() => (cards++));
  }

  void resetCards() {
    setState(() => (cards = 7));
  }

  // light methods
  void draw2() {
    setState(() => (cards += 2));
  }

  void draw4() {
    setState(() => (cards += 4));
  }

  // dark methods
  void draw5() {
    setState(() => (cards += 5));
  }

  void drawCards() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("Cuantas cartas va a agregar"),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  inputValue = value;
                });
              },
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      cards += inputRegex.hasMatch(inputValue)
                          ? int.parse(inputValue)
                          : 0;
                    });
                  },
                  child: const Text("OK")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
            ],
          );
        },
        barrierDismissible: false,
        barrierColor: Colors.black);
  }

  // widget
  @override
  Widget build(BuildContext context) {
    ButtonStyle btnPrimaryStyles = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(
      Theme.of(context).colorScheme.primary)
    );

    ButtonStyle btnSecondaryStyles = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(
      Theme.of(context).colorScheme.secondary)
    );

    String msg = "Jugador ${widget.position} ganaste!!!";

    // dark widgets
    List<Widget> darkButtons = [
      TextButton(
          style: btnPrimaryStyles,
          onPressed: cards != 0 ? draw5 : null, child: const Text("+5")
        ),
      TextButton(
          style: btnPrimaryStyles,
          onPressed: cards != 0 ? drawCards : null, child: const Text("+X")),
    ];

    // light widgets
    List<Widget> lightButtons = [
      TextButton(style: btnPrimaryStyles, onPressed: cards != 0 ? draw2 : null, child: const Text("+2")),
      TextButton(style: btnPrimaryStyles, onPressed: cards != 0 ? draw4 : null, child: const Text("+4")),
    ];

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        TextButton(
            onPressed: cards != 0 ? (() => {discardCard(msg)}) : null,
            child: const Text("-1")),
        TextButton(
            onPressed: cards != 0 ? drawCard : null, child: const Text("+1")),
      ]),
      Text("Jugador ${widget.position}: $cards carta${cards == 1 ? '' : 's'}"),
      Row(
        children: [
          ...(widget.isDarkMethods ? darkButtons : lightButtons),
          IconButton(
            style: btnSecondaryStyles,
            onPressed: cards == 0 ? resetCards : null,
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      )
    ]);
  }
}
