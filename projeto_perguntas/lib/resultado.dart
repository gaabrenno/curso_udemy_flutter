import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Nivel Younglin';
    } else if (pontuacao < 12) {
      return 'Nivel Padawan';
    } else if (pontuacao < 25) {
      return 'Nivel Cavaleiro Jedi';
    } else {
      return 'Nivel Mestre Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Text(fraseResultado, style: TextStyle(fontSize: 30)),
      ),
      InkWell (child: Text('Reiniciar?', style: TextStyle(fontSize: 18, color: Colors.blue)),onTap: quandoReiniciarQuestionario,)
    ]);
  }
}
