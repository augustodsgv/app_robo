import 'package:flutter/material.dart';
import 'LocalizeMe.dart';
import 'nao_estou_bem.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  // Novo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Texto do "Bem vindo ao DC"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Bem vindo(a) ao DC!',
                  style: TextStyle(
                      color: Color.fromARGB(183, 23, 62, 190),
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ), 
                    
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Botão do Oriente-me
                ElevatedButton.icon(
                  onPressed: () {
                    print("oriente-me");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocalizeMe()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    fixedSize: Size(150, 50),
                    elevation: 8,
                    shadowColor: Color.fromARGB(255, 69, 78, 207),
                  ),
                  icon: Icon(
                    Icons.location_on,
                    size: 20,
                    color: Color.fromARGB(255, 69, 78, 217),
                  ),
                  label: const Text(
                    'Localize-me',
                    style:
                      TextStyle(
                        color: Color.fromARGB(255, 69, 78, 217),
                      )
                  )
                ),

                // Botão do Cardápio RU 
                ElevatedButton.icon(
                  onPressed: () {
                    print("cardapio RU");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    fixedSize: Size(150, 50),
                    elevation: 8,
                    shadowColor: Color.fromARGB(255, 69, 78, 207),
                  ),
                  icon: Icon(
                    Icons.restaurant_menu,
                    size: 20,
                    color: Color.fromARGB(255, 69, 78, 217),
                  ),
                  label: Text(
                    'Cardápio RU',
                    style: TextStyle(
                      color: Color.fromARGB(255, 69, 78, 217),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: 
              MainAxisAlignment.spaceAround, 
              children: [

              // Botão do Saldo da Carteirinha
              ElevatedButton.icon(
                onPressed: () {
                  print('Saldo da carteirinha');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(150,50),
                  elevation: 8,
                  shadowColor: Color.fromARGB(255, 69, 78, 207),
                ),
                icon: 
                  Icon(
                    Icons.attach_money,
                    size: 20,
                    color: Color.fromARGB(255, 69, 78, 217),
                ),
                label: Text(
                  'Saldo da carteirinha',
                  style: TextStyle(
                    color: Color.fromARGB(255, 69, 78, 207),
                  ),
                  //textAlign: TextAlign.center,
                ),
              ),
              
              // Botão do Reservar Sala
              ElevatedButton.icon(
                  onPressed: () {
                    print('Reservar salas');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    fixedSize: Size(150, 50),
                    elevation: 8,
                    shadowColor: Color.fromARGB(255, 69, 78, 207),
                  ),
                  icon: Icon(
                    Icons.insert_invitation,
                    size: 20,
                    color: Color.fromARGB(255, 69, 78, 207),
                  ),
                  label: Text(
                    'Reservar Salas',
                    style: TextStyle(
                      color: Color.fromARGB(255, 69, 78, 207)
                    ),
                  )
                )
              ]
            ),

            // Botão do Não me Sinto Bem
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    print("não me sinto bem");
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => NaoMeSintoBem()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    fixedSize: Size(250, 50), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), 
                    ),
                    elevation: 8,
                    shadowColor: Color.fromARGB(255, 69, 78, 207),
                  ),
                  icon: Icon(
                    Icons.sentiment_very_dissatisfied, 
                    size: 24.0, 
                    color: Color.fromARGB(255, 69, 78, 207),
                  ), 
                  label: Text(
                    "Não me sinto bem",
                    style: TextStyle(color: Color.fromARGB(255, 69, 78, 207), fontFamily: "Mulish-Light"),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
  // Antigo
  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrienteMe()),
                    );
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
                  Navigator.push(
                    context,
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
  */
}
