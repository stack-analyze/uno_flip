class Rule {
  final String title;
  final String desc;
  final String? card;
  final String? altCard;

  Rule({
  	required this.title,
    required this.desc,
    this.card,
    this.altCard,
  });
}

List<Rule> rules = [
  Rule(
    title: "decir uno",
    desc: "cuando tiras tu penultima carta debes decir uno antes que te descubra o de lo contrario debes tomar dos cartas de la pila para tomar.",
  ),
  Rule(
    title: "como ganar",
    desc: "la forma de ganar en este uno es. te desaches de todas tus cartas.",
  ),
  Rule(
    title: "carta flip",
    desc: """
    cuando se juega una carta flip se cambio de lado del juego.
    esta carta tiene la posibilidad que la salga un comodìn.
    las cartas de acciòn no se aplica su efecto.
    """,
    card: "images/flip_claro.png",
    altCard: "images/flip_oscuro.png"),
  Rule(
    title: "toma 1",
    desc: "el siguiente jugador toma una carta y pierde el turno.",
      card: "images/toma1.png"),
  Rule(
    title: "reversa",
    desc: """cuando se juega esta se cumple bajo dos condiciones. 
      1): si estas en una partida de 2 jugadores actua como una carta salta. 
      2): cambia la dirección del juego.""",
    card: "images/reversa_claro.png",
    altCard: "images/reversa_oscuro.png"
  ),
  Rule(
      title: "salta",
      desc: "el siguiente jugador pierde el turno.",
      card: "images/salta.png"),
  Rule(
      title: "toma 5",
      desc: "el siguiente jugador toma cinco carta y pierde el turno.",
      card: "images/toma5.png"),
  Rule(
      title: "salta a todos",
      desc: "el resto de jugadores pierde su turno.",
      card: "images/salta_todos.png"),
  Rule(
      title: "multicolor",
      desc: "elige el nuevo color para continuar el juego.",
      card: "images/multicolor_claro.png",
      altCard: "images/multicolor_oscuro.png"),
  Rule(
      title: "toma 2",
      desc: """
      1) sí no te desafia robas 2 cartas y pierdes el turno.
      2) sí ganas el desafio el jugador que tiro el comodin toma 2 va tomar las 2 cartas en su lugar.
      3) sí pierdes el desafio toma 4 y pierden el turno.
      """,
      card: "images/comodin_toma2.png"),
  Rule(
      title: "toma un color",
      desc: """
      1) sí no te desafia robas cartas hasta que le salga el color eligido y pierdes el turno.
      2) sí ganas el desafio el jugador que tiro el comodin toma un color va tomar ese castigo en su lugar.
      3) sí pierdes el desafio vas a cartas hasta que le salga el color que se selecciono mas 2 cartas extra y pierden el turno.
      """,
      card: "images/comodin_toma_un_color.png"),
];
