/**
 * Programa : nao_estou_bem.dart
 * Descrição : Implementação da tela "não estou bem", que tem como objetivo ajudar pessoas com alguma dificuldade psicológicca
 * Autores : Gabrielly Castilho
 * Última edição : 15/03/2023
 */
///

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto/components/app_bar.dart';
import 'package:projeto/main.dart';
import 'package:projeto/components/oval_button.dart';

//titulo da pagina -> topbar
class CustomTextStyle {
  static const TextStyle nameOfTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w200,
    fontFamily: "Comfortaa",
    // decorationThickness: 1.5
  );
}

class NaoMeSintoBem extends StatelessWidget {
  const NaoMeSintoBem({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarRobo(titulo: 'Não me sinto bem')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            OvalButton(
              texto: 'Procurar atendimento psicológico',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProcurarAtend()));
              },
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OvalButton(
                texto: 'Técnicas para me acalmar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tecnicas1()),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProcurarAtend extends StatelessWidget {
  const ProcurarAtend({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarRobo(
              titulo: 'Não me sinto bem',
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Center(
                child: Text(
                  'Plantão Psicanalítico do DC',
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 66, 75, 79),
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Toda terça - feira',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      background: Paint()
                        ..strokeWidth = 50.0
                        ..color = Color.fromARGB(255, 164, 188, 196)
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                    child: Text(
                  'Presencial - das 10h às 16h na sala Laboratório de Apoio Extensão (Suporte 1) no Departamento de Computação (DC).',
                  style: TextStyle(fontSize: 20),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                    child: Text(
                  'Online - das 10h às 19h para marcar um atendimento, basta enviar um e-mail plantaopsicanalitico@ufscar.br.',
                  style: TextStyle(fontSize: 20),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                    child: Text(
                  'plantaopsicanalitico@ufscar.br',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      background: Paint()
                        ..strokeWidth = 50.0
                        ..color = Color.fromARGB(255, 164, 188, 196)
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                )),
              ],
            ),
          ],
        ));
  }
}

///*

class Tecnicas1 extends StatelessWidget {
  const Tecnicas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarRobo(titulo: 'Não me sinto bem')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Inspire de acordo com a expansão do círculo.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 34,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/gif_respiracao.gif')
              /*
                  Image.network(
                    'https://i.pinimg.com/originals/fb/bf/33/fbbf331a7b1473d9f91e9c67ba425030.gif',
                    width: 200,
                    height: 200,
                    )
                    */
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Expire de acordo com a contração do círculo.',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //trocar botão
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tecnicas2()));
                },
                icon: Icon(
                  Icons.arrow_circle_right,
                ),
                color: Color.fromARGB(255, 131, 150, 157),
                iconSize: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}
//*/

class Tecnicas2 extends StatelessWidget {
  const Tecnicas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarRobo(titulo: 'Não me sinto bem')),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nomeie o que está ao seu redor',
                style: TextStyle(
                  color: Color.fromARGB(255, 66, 75, 79),
                  fontSize: 40,
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('5 Coisas que você pode ver',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('4 coisas que você pode tocar',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('2 coisas que você pode ouvir',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text('1 coisa que você pode degustar',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VoltarOuRefazer()));
                },
                icon: Icon(
                  Icons.arrow_circle_right,
                ),
                color: Color.fromARGB(255, 131, 150, 157),
                iconSize: 60,
              )
            ],
          ),
        ]));
  }
}

class VoltarOuRefazer extends StatelessWidget {
  const VoltarOuRefazer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarRobo(titulo: 'Não me sinto bem')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OvalButton(texto: 'Estou me sentindo melhor :)', onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const AppRobo()));
                    })
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OvalButton(texto: 'Quero repetir os exercícios', onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Tecnicas1()));
                    },)
              ],
            ),
          ],
        ));
  }
}
