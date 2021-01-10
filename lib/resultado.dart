import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado({this.pontuacao, this.reiniciarQuestionario});

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Por favor, tente novamente";
    } else if (pontuacao < 16) {
      return "Estude mais um pouco";
    } else {
      return "Perfeito!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "$fraseResultado",
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: reiniciarQuestionario,
          child: Text('Reiniciar Questionário?'),
          textColor: Colors.blue[200],
        )
      ],
    );
  }
}
