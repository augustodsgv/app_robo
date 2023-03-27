/**
 * Programa : localize_me.dart
 * Descrição : Classe que implementa a tela do "oriente-me", que ajuda a pessoa a se orientar no dc
 * Autor : Augusto dos Santos
 * Última edição : 13/03/2023
*/
///
import 'package:flutter/material.dart';
import 'connect_back_end.dart';
import 'estilos/cores.dart';
import 'components/generic_button.dart';
import 'components/walk_button.dart';
import 'estilos/fontes.dart';
import 'package:projeto/components/app_bar.dart';

// Estados do robo
enum EstadoRobo { esperando, carregando, andando }

// Classe que apresenta a seleção de telas
class LocalizeMe extends StatelessWidget {
  const LocalizeMe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarRobo(titulo: 'Localize-me'),
          ),

      // Corpo
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // Home
            GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'Home')),
                  );
                },
                texto: 'Home'),
            // Copa
            GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'Copa')),
                  );
                },
                texto: 'Copa'),

            // Botão banheiros
            GenericButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MostraLocal(lugar: 'Banheiros')),
                );
              },
              texto: 'Banheiros',
            ),

            // Auditório
            GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MostraLocal(lugar: 'Auditorio')),
                  );
                },
                texto: 'Auditorio'),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Espaço maker
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MostraLocal(lugar: 'Maker')),
                  );
                },
                texto: 'Maker',
              ),
              // Lig
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'Lig')),
                  );
                },
                texto: 'Lig',
              ),

              // Botão do LE-1
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'LE-1')),
                  );
                },
                texto: 'LE-1',
              ),

              // Botão LE-2
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'LE-2')),
                  );
                },
                texto: 'LE-2',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Botão LE-3
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'LE-3')),
                  );
                },
                texto: 'LE-3',
              ),
              // LE-4
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'LE-4')),
                  );
                },
                texto: 'LE-4',
              ),

              // Botão LE-5
              GenericButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostraLocal(lugar: 'LE-5')),
                  );
                },
                texto: 'LE-5',
              ),

              // Botão PPG-CC4
              GenericButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MostraLocal(lugar: 'PPG-CC4')),
                    );
                  },
                  texto: 'PPG-CC4')
            ],
          ),
        ],
      ),
    );
  }
}

// Pagina que mostra o local escolhido pela pessoa e mostra a opção de fazer o robô ir lá
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
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarRobo(titulo: 'Localize-me'),
          ),

        body: Column(children: [
          // Imagem do local
          Expanded(
              child: Image.asset(
            'assets/fotos_locais/${widget.lugar}.jpg',
          )),
          Row(
            children: [
              Expanded(
                  child: WalkButton(
                      onPressed: selectedEstadoRobo == EstadoRobo.esperando
                          ? () {
                              _selecionar_estado(EstadoRobo.esperando);
                            }
                          : () {
                              _selecionar_estado(EstadoRobo.andando);
                            },
                      texto: selectedEstadoRobo == EstadoRobo.esperando
                          ? 'ir para ${widget.lugar}'
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
                      textoCard:
                          '1. O robô lhe acompanhará até o seu destino\n2. Deixe a frente do robô livre\n3. Em caso de emergência, aperte o botão vermelho')),
            ],
          )
        ]));
  }

  // Função que muda o estado do robo
  _selecionar_estado(EstadoRobo estado) {
    setState(() {
      if (estado == EstadoRobo.esperando) {     // Se você clica e o robo está esperando, significa que o robo deve andar
        selectedEstadoRobo = EstadoRobo.andando;
        enviaLocal(widget.lugar);
      } else {  // estado == andando
        selectedEstadoRobo = EstadoRobo.esperando;
        pararRobo();
      }
    });
  }
}
