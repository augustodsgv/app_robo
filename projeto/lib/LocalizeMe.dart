/*
Descrição : Classe que implementa a tela do "oriente-me", que ajuda a pessoa a se orientar no dc
Autro : Augusto dos Santos
*/
import 'package:flutter/material.dart';
import 'templates/BotaoTemplate.dart';
import 'connect_back_end.dart';
import 'estilos.dart';

class LocalizeMe extends StatefulWidget {
  const LocalizeMe({Key? key}) : super(key: key);

  @override
  _SelecaoLocais createState() => _SelecaoLocais();
}

// Classe que apresenta a seleção de telas
class _SelecaoLocais extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text(
            'Localize-me',
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

      // Corpo
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // Primeira linha
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('Home');
                  enviaLocal('Home');
                },
                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),

                // Texto do botão
                child: const Text(
                  'Home',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),
              )
            ]),

            // Copa
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print("Copa");
                  enviaLocal("Copa");
                },

                // Texto do botão
                child: const Text(
                  'Copa',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),

            // Botão banheiros
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('Banheiros');
                  enviaLocal('Banheiros');
                },

                // Texto do botão
                child: const Text(
                  'Banheiros',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),

            // Espaço maker
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print("Espaço Maker");
                  enviaLocal("Maker");
                },

                //Texto do botão
                child: const Text(
                  'Espaço Maker',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),

            // LIG
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                //Função do botão
                onPressed: () {
                  print("LIG");
                  enviaLocal("Lig");
                },

                // Texto
                child: const Text(
                  'Lig',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),
          ]),

          // Segunda coluna
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            // Botão do LE-1
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('LE-1');
                },

                // Texto
                child: const Text(
                  'LE-1',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),

            // Botão LE-2
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('LE-2');
                },
                // Texto
                child: const Text('LE-2', style: TextStyle(color: Color.fromARGB(255, 69, 78, 217))),
                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),
            //Botão LE-3
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('LE-3');
                },

                // Texto
                child: const Text('LE-3', style: TextStyle(color: Color.fromARGB(255, 69, 78, 217))),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              ),
            ]),

            // Botão LE-4
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('LE-4');
                },
                // Texto
                child: const Text('LE-4',
                style: TextStyle(color: Color.fromARGB(255, 69, 78, 217))
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              )
            ]),

            // Botão LE-5
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                // Função do botão
                onPressed: () {
                  print('LE-5');
                },
                // Texto
                child: const Text(
                  'LE-5',
                  style: TextStyle(color: Color.fromARGB(255, 69, 78, 217))
                ),

                // Estilo do botão
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150, 50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
              ),
            ])
          ])
        ],
      ),
    );
  }
}

/*
// Estado de quando se clica em um botão
class _RoboAndando extends State{
  @override
}
*/