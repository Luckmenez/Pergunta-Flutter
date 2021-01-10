import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(MyApp());

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual desses personagem é o mais poderoso?',
      'respostas': [
        {'texto': 'Goku', 'pontuacao': 8},
        {'texto': 'Saitama', 'pontuacao': 10},
        {'texto': 'Naruto', 'pontuacao': 5},
        {'texto': 'Ainz', 'pontuacao': 4},
      ]
    },
    {
      'texto': 'Qual desses personagens é o mais veloz?',
      'respostas': [
        {'texto': 'Sonic', 'pontuacao': 10},
        {'texto': 'Tailz', 'pontuacao': 8},
        {'texto': 'Raikage', 'pontuacao': 7},
        {'texto': 'Minato', 'pontuacao': 9},
      ]
    },
    {
      'texto': 'Qual o melhor anime?',
      'respostas': [
        {'texto': 'Naruto', 'pontuacao': 10},
        {'texto': 'Shingeki no kyogin', 'pontuacao': 10},
        {'texto': 'Boruto', 'pontuacao': 3},
        {'texto': 'Dragon ball', 'pontuacao': 8},
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (var textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    //   print(respostas);
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Meu titulo')),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(
                pontuacao: _pontuacaoTotal,
                reiniciarQuestionario: reiniciarQuestionario,
              ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}
