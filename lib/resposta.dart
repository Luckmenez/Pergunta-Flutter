import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String respostaTexto;

  final void Function() onSelecao;

  Resposta(this.respostaTexto, this.onSelecao);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(respostaTexto),
        onPressed: onSelecao,
      ),
    );
  }
}
