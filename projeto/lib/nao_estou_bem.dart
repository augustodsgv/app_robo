import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projeto/main.dart';

//titulo da pagina -> topbar
class CustomTextStyle {
  static const TextStyle nameOfTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w200,
    fontFamily: "Comfortaa", 
    // decorationThickness: 1.5
  );
}

class NaoMeSintoBem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: 
          PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: AppBar(
              title: Text('Não me sinto bem', style: CustomTextStyle.nameOfTextStyle,),
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
              shadowColor: Colors.purple,
              actions: [
                IconButton(
                  icon: 
                    const Icon(
                      Icons.accessibility_new),
                  onPressed: (){
                  
                  },
                )
              ],
            ),
          ),
        body:
          Column(
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(217, 217, 217, 217),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    ),
                    child: 
                      Text('Procurar atendimento psicológico', 
                        style: TextStyle(color: Color.fromARGB(255, 69, 78, 207), fontFamily: "Mulish-Light")
                      )

                )
                ]
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page3())
                      );
                    }, //chamada da função
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(217, 217, 217, 217),
                      fixedSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    ),
                    child: 
                      Text('Técnicas para me acalmar', 
                        style: TextStyle(color: Color.fromARGB(255, 69, 78, 207))
                      )

                )
                ],  
              ),
            ],            
          ),
      );
  }
}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: 
          PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: AppBar(
              title: Text('Não me sinto bem', style: CustomTextStyle.nameOfTextStyle,),
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
              shadowColor: Colors.purple,
              actions: [
                IconButton(
                  icon: 
                    const Icon(
                      Icons.accessibility_new),
                  onPressed: (){
                  
                  },
                )
              ],
            ),
          ),
        body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: 
                      Text(
                        'Plantão Psicanalítico do DC', 
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ) 
                  ),
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
          appBar: 
          PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: AppBar(
              title: Text('Não me sinto bem', style: CustomTextStyle.nameOfTextStyle,),
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
              shadowColor: Colors.purple,
              actions: [
                IconButton(
                  icon: 
                    const Icon(
                      Icons.accessibility_new),
                  onPressed: (){
                  
                  },
                )
              ],
            ),
          ),
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
                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Page4())
                        );
                      }, 
                      
                      style: ElevatedButton.styleFrom(
                        
                      ),
                      icon: Icon(
                        Icons.next_plan
                      ),
                      label: Text(''),

                      
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
                Text('Texto')
              ],
            ),

            Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Page5())
                        );
                      }, 
                      child: Text('Next')
                      )
                  ],
                )
          ]
        )
      )
    );
  }

}

class Page5 extends StatelessWidget{
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
                  onPressed: (){
                      Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp())
                  );
                  }, 
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
          ],
        )

      ),
    );
  }

}

