import 'package:flutter/material.dart';
import 'oriente_me.dart';
import 'nao_estou_bem.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
  
  @override
  Widget build(BuildContext context) {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:
              /*Center(
          child: Text(
            'Bem vindo(a) ao DC!')
        )*/
              Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Bem vindo(a) ao DC!'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("oriente-me");
                    Future<bool> mensagem = recebeMensagem();
                    print(mensagem);
                  },
                  child: const Text(
                    'Oriente-me',
                  )),
              ElevatedButton(
                onPressed: () {
                  print("cardapio RU");
                },
                child: const Text(
                  'Cardápio RU',
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
              onPressed: () {
                print('Saldo da carteirinha');
              },
              child: Text(
                'Saldo da carteirinha',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('Reservar salas');
                },
                child: Text(
                  'Reservar Salas',
                ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("não me sinto bem");
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Page1()),
                  );
                },
                child: Text(
                  "Não me sinto bem",
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
