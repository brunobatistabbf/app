import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    final perguntas = [
      "Você prefere investimentos de baixo risco?", //-1
      "Você está disposto a correr riscos em busca de retornos mais altos?", //+1
      "Você tem interesse em investimentos de longo prazo?", //-1
      "Você está confortável com a possibilidade de perder parte do seu investimento?", //+1
      "Você está interessado em investimentos mais ativos?", //+1
      "Você prefere investir em empresas consolidadas?", //-1
      "Você valoriza investimentos com benefícios fiscais?", //-1
      "Você está disposto a investir em ativos internacionais?", //+1
    ];

    var perguntaSelecionada = 0;
    var tipoInvestidor = 0;

    void respostas() {
      perguntaSelecionada++;
      tipoInvestidor++;
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 32, 255, 7),
            title: Text("Investidor Quiz"),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                onPressed: respostas,
                child: const Text("Sim"),
              ),
              ElevatedButton(
                onPressed: respostas,
                child: const Text("Não"),
              ),
            ],
          )),
    );
  }
}
