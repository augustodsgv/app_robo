/*
Descrição : Classe que implementa a tela do "oriente-me", que ajuda a pessoa a se orientar no dc
Autro : Augusto dos Santos
*/
import 'package:flutter/material.dart';
import 'package:projeto/components/walk_button.dart';
import 'package:projeto/cores.dart';
import 'connect_back_end.dart';
import 'estilos.dart';
import 'package:projeto/components/place_button.dart';
import 'estilos.dart';

// Estados do robo
enum EstadoRobo { esperando, carregando, andando }

// Classe que apresenta a seleção de telas
class LocalizeMe extends StatelessWidget {
  const LocalizeMe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: const Text(
            'Localize-me',
            style: CustomTextStyle.nameOfTextStyle,
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.purple,
        ),
      ),

      // Corpo
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // Primeira linha
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              // Home

              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MostraLocal(lugar: 'Home')),
                    );
                  },
                  local: 'Home')
            ]),

            // Copa
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'Copa')),
                    );
                  },
                  local: 'Copa')
            ]),

            // Botão banheiros
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [

              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'Banheiros')),
                    );
                  },
                  local: 'Banheiros')
            ]),

            // Espaço maker
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [

              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'Maker')),
                    );
                  },
                  local: 'Maker')
            ]),
            // LIG
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'Lig')),
                    );
                  },
                  local: 'Lig')
            ]),
          ]),

          // Segunda coluna
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            // Botão do LE-1
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'LE-1')),
                    );
                  },
                  local: 'LE-1')
            ]),

            // Botão LE-2
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'LE-2')),
                    );
                  },
                  local: 'LE-2')
            ]),

            //Botão LE-3
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'LE-3')),
                    );
                  },
                  local: 'LE-3')
            ]),

            // Botão LE-4
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'LE-4')),
                    );
                  },
                  local: 'LE-4')
            ]),

            // Botão LE-5
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              PlaceButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'LE-5')),
                    );
                  },
                  local: 'LE-5')
            ])
          ])
        ],
      ),
    );
  }
}
class MostraLocal extends StatefulWidget {
  final String lugar;
  const MostraLocal({super.key, required this.lugar});

  @override
  _MostraLocalState createState() => _MostraLocalState();
}

// Estado em que se mostra o local
class _MostraLocalState extends State<MostraLocal> {
  // Inicializando o estado do robo como esperando
  EstadoRobo selectedEstadoRobo = EstadoRobo.esperando;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // App Bar
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text(
              widget.lugar,
              style: CustomTextStyle.nameOfTextStyle,
            ),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            shadowColor: Colors.purple,
            actions: [
              IconButton(
                icon: const Icon(Icons.accessibility_new),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Column(children: [
          // Imagem do local
          Expanded(child : Image.asset(
            'assets/fotos_locais/maker.jpg',
            //'assets/fotos_locais/${widget.lugar}.jpg',
            )
          ),

          Row(
            children: [
              Expanded(child : WalkButton(
                onPressed: selectedEstadoRobo == EstadoRobo.esperando
                    ? () {
                        _selecionar_estado(EstadoRobo.andando);
                      }
                    : () {
                        _selecionar_estado(EstadoRobo.esperando);
                      },
                texto: selectedEstadoRobo == EstadoRobo.esperando
                    ? 'ir para ${widget.lugar}!'
                    : 'Parar robo!',
                corBotao: selectedEstadoRobo == EstadoRobo.esperando
                    ? verdeBotao
                    : vermelhoBotao,
                corTexto: selectedEstadoRobo == EstadoRobo.esperando
                    ? verdeBotaoTexto
                    : vermelhoBotaoTexto,
                icone: selectedEstadoRobo == EstadoRobo.esperando
                    ? Icons.directions_walk
                    : Icons.front_hand,
                corIcone: selectedEstadoRobo == EstadoRobo.esperando
                    ? verdeBotaoTexto
                    : vermelhoBotaoTexto,
                textoCard: '1. Ao clicar neste botão, o robô irá lhe acompanhar até o seu local\n2. Deixe a frente do robô livre para que ele não pare\n'
              )),
            ],
          )
        ]));
  }

  // Função que muda o estado do robo
  _selecionar_estado(EstadoRobo estado) {
    setState(() {
      if (estado == EstadoRobo.esperando) {
        selectedEstadoRobo = EstadoRobo.esperando;
        enviaLocal(widget.lugar);
      } else {
        if (estado == EstadoRobo.carregando) {
          selectedEstadoRobo = EstadoRobo.carregando;
        } else {
          selectedEstadoRobo = EstadoRobo.andando;
          pararRobo();
        }
      }
    });
  }
}