import 'dart:io';
import 'package:flutter/material.dart';
import 'package:projeto/main.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Page2())
                    );
                  }, //chamada da função
                  child: const Text('Procurar atendimento psicológico'))
            ]),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:  (context) => Page3())
                  );
                }, 
                child: const Text('Técnicas para me acalmar'))
              ],  
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: 
                      Text('Plantão Psicanalítico do DC', style: TextStyle(fontSize: 20),)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: 
                      Text('Toda terça - feira', style: TextStyle(fontSize: 20),)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: 
                      Text(
                        'Presencial - das 10h às 16h na sala Laboratório de Apoio Extensão (Suporte 1) no Departamento de Computação (DC).', 
                        style: TextStyle(fontSize: 10),)),
                ],
              ),
              
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: 
                    Text(
                      'online - das 10h às 19h para marcar um atendimento, basta enviar um e-mail plantaopsicanalitico@ufscar.br', 
                      style: TextStyle(fontSize: 10),)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: 
                    Text(
                      'plantaopsicanalitico@ufscar.br', 
                      style: TextStyle(fontSize: 20),)
                      ),
              ],
            ),

            ],
          )
      )
    );
  }
}
///*

class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('inspire de acordo com a expansão da cor verde')
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                    Text('expire de acordo com a contração da cor verde')
                   ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Page4())
                        );
                      }, 
                      child: Text('Next')
                      )
                  ],
                )
              ],
            ),
        )  
    );
  }  
}
//*/

class Page4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Estou me sentindo melhor :)')
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Page3())
                  );
                }, 
                child: Text('Quero repetir os exercícios')
              )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (){
                  
                }, 
                child: Text('next'))
              ],
            ),
          ],
        )

      ),
    );
  }

}