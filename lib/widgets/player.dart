import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:uno_flip/states/dark_mode.dart';

class Player extends StatefulWidget {
  final int position;

  const Player({super.key, required this.position});

  @override
  State<StatefulWidget> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int cards = 7;
  String inputValue = "";

  // common buttons
  void addCard() =>
      setState(() {
        cards++;
      });

  void discardCard() =>
      setState(() {
        cards--;
      });

  void resetCards() =>
      setState(() {
        cards = 7;
      });

  // light butttons
  void draw2Cards() =>
      setState(() {
        cards += 2;
      });

  void draw4Cards() =>
      setState(() {
        cards += 4;
      });

  // dark butttons
  void draw5Cards() =>
      setState(() {
        cards += 5;
      });

  void changeValue(String value) =>
      setState(() {
        inputValue = value;
      });

  void drawards() {
    showDialog(
        context: context,
        builder: (ctx) =>
            AlertDialog(
              title: const Text("Cuantas cartas va a agregar"),
              content: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: changeValue,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        cards += int.parse(inputValue);
                      });
                    },
                    child: const Text("OK")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Cancel"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<DarkMode>(context);
    String toggleWord = cards == 1 ? "carta" : "cartas";

    // btn styles
    ButtonStyle btnPrimaryStyles = ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.primary
        ),
    );

    ButtonStyle btnSecondaryStyles = ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.secondary
        )
    );

    ButtonStyle btnDangerStyles = ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.error
        )
    );

    // light widgets
    List<Widget> lightButtons = [
      TextButton(
        onPressed: cards != 0 ? draw2Cards : null,
        style: btnDangerStyles,
        child: const Text("+2"),
      ),
      TextButton(
        onPressed: cards != 0 ? draw4Cards : null,
        style: btnDangerStyles,
        child: const Text("+4"),
      ),
    ];

    // dark widgets
    List<Widget> darkButtons = [
      TextButton(
        onPressed: cards != 0 ? draw5Cards : null,
        style: btnDangerStyles,
        child: const Text("+5"),
      ),
      TextButton(
        onPressed: cards != 0 ? drawards : null,
        style: btnDangerStyles,
        child: const Text("+X"),
      ),
    ];

    return Column(
      children: [
        Text("jugador ${widget.position + 1}: $cards $toggleWord"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: cards != 0 ? discardCard : null,
              style: btnPrimaryStyles,
              child: const Text("-1"),
            ),
            TextButton(
              onPressed: cards != 0 ? addCard : null,
              style: btnPrimaryStyles,
              child: const Text("+1"),
            ),
            ...(isDarkMode.value ? darkButtons : lightButtons),
            IconButton(
                onPressed: cards == 0 ? resetCards : null,
                icon: const Icon(Icons.refresh_outlined),
                style: btnSecondaryStyles,
            )
          ],
        )
      ],
    );
  }
}
