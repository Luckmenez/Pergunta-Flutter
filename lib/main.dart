import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class PerguntaAppState extends State<MyApp> {
  var perguntaSelecionada = 0;
  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Com quantos paus se faz uma canoa?',
      'O rato roeu a roupa do rei de Roma?',
      'Qual a capital do Brasil?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(child: Text('Resposta 1'), onPressed: responder),
            RaisedButton(child: Text('Resposta 2'), onPressed: responder),
            RaisedButton(child: Text('Resposta 3'), onPressed: responder),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
