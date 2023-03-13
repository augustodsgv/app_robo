import 'package:flutter/material.dart';
import 'package:projeto/components/generic_button.dart';
import 'package:projeto/components/generic_icon_button.dart';
import 'package:projeto/cores.dart';
import 'localize_me.dart';
import 'nao_estou_bem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // Novo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Texto do "Bem vindo ao DC"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Bem vindo(a) ao DC!',
                style: TextStyle(
                  color: corLetrasApp,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          // Primeira linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Botão do Localize-me
              GenericIconButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocalizeMe()),
                    ), 
                texto: 'Localize-me',
                icone: Icons.location_on
              ),

              // Botão do Cardápio RU
              GenericIconButton(
                onPressed: (){print('cardapio RU');},
                texto: 'Cardápio RU',
                icone: Icons.restaurant_menu),
              
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            // Botão do Saldo da Carteirinha
            GenericIconButton(
                onPressed: () {
                  print('Saldo da Carteirinha');
                },
                texto: 'Saldo da Carteirinha',
                icone: Icons.attach_money),

            // Botão do Reservar Sala
            GenericIconButton(
                onPressed: () {
                  print('reservar sala');
                },
                texto: 'Reservar Salas',
                icone: Icons.insert_invitation),
            // Antigo
          ]),

          // Botão do Não me Sinto Bem
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print("não me sinto bem");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NaoMeSintoBem()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 164, 188, 196),
                  fixedSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8,
                  shadowColor: Colors.black,
                ),
                icon: Icon(
                  Icons.sentiment_very_dissatisfied,
                  size: 24.0,
                  color: Color.fromARGB(255, 66, 75, 79),
                ),
                label: Text(
                  "Não me sinto bem",
                  style: TextStyle(
                      color: Color.fromARGB(255, 66, 75, 79),
                      fontFamily: "Mulish-Light"),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
