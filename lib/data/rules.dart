class Rule {
  final String title;
  final String desc;
  final String card;

  Rule(this.title, this.desc, this.card);
}

List<Rule> unoFlipRules = [
  Rule(
      "decir uno",
      "cuando tiras tu penultima carta debes decir uno antes que te descubra o de lo contrario debes tomar dos cartas de la pila para tomar.",
      "assets/toma1.png"),
  Rule(
      "como ganar",
      "la forma de ganar en este uno es. te desaches de todas tus cartas.",
      "assets/toma1.png"),
  Rule(
      "carta flip",
      "lado claro: cuando tiras esta carta, todo cambia del lado oscuro al lado claro y viceversa. Después de que se tira la carta Flip, se voltean la pila para tirar (la carta recién jugada quedará abajo), la pila para tomar y, finalmente, las manos de cada jugador. Este nuevo lado seguirá en juego hasta que otro jugador tire una carta Flip, lo que cambiará nuevamente el lado. Esta carta solo se puede tirar sobre una carta del mismo color u otra carta Flip. Si esta carta se voltea al comienzo del juego, la baraja se gira inmediatamente hacia el lado oscuro.\n CUANDO SE VOLTEA LA BARAJA, SI LA NUEVA CARTA SUPERIOR DE LA PILA PARA TIRAR ES UNA CARTA DE ACCIÓN (REVERSA, SALTA, TOMAR, TIRAR) NO TIENES QUE REALIZAR LA ACCIÓN. SI LA NUEVA CARTA SUPERIOR DE LA PILA ES UN COMODÍN, EL JUGADOR QUE JUGÓ LA CARTA FLIP ELIGE EL COLOR.",
      "assets/flip.png"),
  Rule(
      "toma 1",
      "cuando se tira esta carta, el siguiente jugador deberá toma una carta y pierde su turno. Esta carta solo se puede tirar sobre una carta del mismo color u otra carta Toma 1. Si esta es la primera carta del juego que se voltea, se sigue la misma regla de juego.",
      "assets/toma1.png"),
  Rule(
      "reversa",
      """cuando se juega esta se cumple bajo dos condiciones. 
        condición 1: si estas en una partida de ods jugadores actua como una carta salta y te permite otro turno. 
        condición 2: cambia la dirección del juego si el juego iba hacia la derecha el juego ira hacia la izquierda o viceversa.""",
      "assets/reversa.png"),
  Rule(
      "salta",
      "cuando se tira esta carta, el siguiente jugador pierde su turno y tirará el siguiente según el sentido del juego. Esta carta solo se puede tirar sobre una carta del mismo color u otra carta Salta. Si esta es la primera carta del juego que se voltea, se “salta” al jugador a la izquierda del repartidor y empieza el siguiente jugador.",
      "assets/salta.png"),
  Rule(
      "toma 5",
      "cuando se tira esta carta, el siguiente jugador toma cinco cartas y pierde su turno. Esta carta solo se puede tirar sobre una carta del mismo color u otra carta Toma 5.",
      "assets/toma5.png"),
  Rule(
      "salta a todos",
      "cuando se tira esta carta, todos los demás jugadores pierden su turno y tirará el mmismo jugador que tiró la carta original. Esta carta solo se puede tirar sobre una carta de mismo color u otra carta salta a todos.",
      "assets/salta_todos.png"),
  Rule(
      "multicolor",
      "el jugador que tire esta carta dirá el nuevo color que se jugará o puede repetir el que ya estaba para tirar. Esta carta se puede tirar sobre cualquier carta; incluso, puede utilizarse en caso de tener alguna carta con el número o color correspondiente. Si esta es la primera carta del juego que se voltea, la persona a la izquierda del repartidor escoge el color con el que seguirá el juego.",
      "assets/multicolor.png"),
  Rule(
      "toma 2",
      "quien tira esta carta escoge su color Y hace que el siguiente jugador tome dos cartas de la pila para TOMAR y pierda su turno. Sin embargo, ¡hay un obstáculo! Esta carta solo se puede tirar si el jugador que la tiene NO dispone de otra carta en su mano que coincida en COLOR con la carta recién bajada. No obstante, sí se puede tirar esta carta si el jugador tiene en su mano cartas que coincidan con la carta recién bajada en número o acción. Si esta es la primera carta del juego que se voltea, se regresa a la baraja y se voltea otra carta.",
      "assets/comodin_toma2.png"),
  Rule(
      "toma un color",
      "cuando tiras esta carta, el siguiente jugador deberá tomar cartas hasta que salga una del color que hayas elegido (sin importar la cantidad) y perderá su turno. Sin embargo, ¡hay un obstáculo! Esta carta solo se puede tirar si el jugador que la tiene NO dispone de otra carta en su mano que coincida en COLOR con la carta recién bajada. No obstante, sí se puede tirar esta carta si el jugador tiene en su mano cartas que coincidan con la carta recién bajada en número o acción. Si esta carta se voltea al comienzo del juego, la persona a la izquierda del repartidor escoge el color con el que se seguirá el juego. Si sospechas que un jugador bajó ilegalmente un comodín Toma un color que te afecte(es decir, teniendo alguna carta con el color que corresponda), puedes desafiarlo. El jugador desafiado deberá enseñarte sus cartas. Si es culpable, el jugador desafiado deberá tomar cartas hasta que salga el color elegido. No obstante, si el jugador desafiado es inocente, el desafiante deberá tomar las cartas hasta que salga el color elegido MÁS dos cartas adicionales. Si sospechas que un jugador bajó ilegalmente un comodín Toma un color que te afecte (es decir, teniendo alguna carta con el color que corresponda), puedes desafiarlo. El jugador desafiado deberá enseñarte sus cartas. Si es culpable, el jugador desafiado deberá tomar cartas hasta que salga el color elegido. No obstante, si el jugador desafiado es inocente, el desafiante deberá tomar las cartas hasta que salga el color elegido MÁS dos cartas adicionales.",
      "assets/comodin_toma_un_color.png"),
];
