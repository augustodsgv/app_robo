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
              backgroundColor: Color.fromARGB(255, 164, 188, 196),
              shadowColor: Colors.black,
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
                      MaterialPageRoute(builder: (context) => ProcurarAtend())
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
                        style: TextStyle(color: Color.fromARGB(255, 66, 75, 79))
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
                      MaterialPageRoute(builder: (context) => Tecnicas1())
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
                        style: TextStyle(color: Color.fromARGB(255, 66, 75, 79))
                      )

                )
                ],  
              ),
            ],            
          ),
      );
  }
}

class ProcurarAtend extends StatelessWidget{
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
              backgroundColor: Color.fromARGB(255, 164, 188, 196),
              shadowColor: Colors.black,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            color: Color.fromARGB(255, 66, 75, 79),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                  ) 
                ]
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Toda terça - feira', 
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    background: Paint()
                    ..strokeWidth = 25.0
                    ..color = Color.fromARGB(255, 164, 188, 196)
                    ..style = PaintingStyle.stroke
                    ..strokeJoin = StrokeJoin.round
                  ),)
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
                      'Online - das 10h às 19h para marcar um atendimento, basta enviar um e-mail plantaopsicanalitico@ufscar.br.', 
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
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      background: Paint()
                      ..strokeWidth = 25.0
                      ..color = Color.fromARGB(255, 164, 188, 196)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round
                      ),)
                      ),
              ],
            ),

            ],
          )
      );
  
  }
}
///*

class Tecnicas1 extends StatelessWidget{
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
              backgroundColor: Color.fromARGB(255, 164, 188, 196),
              shadowColor: Colors.black,
              actions: [
                IconButton(
                  icon: 
                    const Icon(
                      Icons.accessibility_new),
                  onPressed: (){},
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
                  Text('Inspire de acordo com a expansão do círculo.', 
                  style:
                    TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 17,
                    ),)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    'https://i.pinimg.com/originals/fb/bf/33/fbbf331a7b1473d9f91e9c67ba425030.gif',
                    width: 200,
                    height: 200,
                    )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text('Expire de acordo com a contração do círculo.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),)
                  ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  //trocar botão
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Tecnicas2())
                      );
                    }, 
                    icon: Icon(
                      Icons.arrow_circle_right,
                    ), 
                    color: Color.fromARGB(255,131, 150, 157),
                    iconSize: 24, 
                     

                  )
                ],
              )
            ],
          ), 
    );
  }  
}
//*/

class Tecnicas2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text('Não me sinto bem', style: CustomTextStyle.nameOfTextStyle,),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 164, 188, 196),
            shadowColor: Colors.black,
            actions: [
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.accessibility_new)
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
                Text('Nomeie o que está ao seu redor', 
                  style: TextStyle(
                    color: Color.fromARGB(255, 66, 75, 79),
                    fontSize: 20,
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('5 Coisas que você pode ver', 
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
                
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('4 coisas que você pode tocar', 
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
                
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('2 coisas que você pode ouvir', 
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
                
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1 coisa que você pode degustar', 
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
                
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 IconButton(
                    onPressed: (){
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => VoltarOuRefazer())
                      );
                    }, 
                    icon: Icon(
                      Icons.arrow_circle_right,
                    ), 
                    color: Color.fromARGB(255,131, 150, 157),
                    iconSize: 24, 
                  )
              ],
            ),
          ]
        )
    );
  }

}

class VoltarOuRefazer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    fixedSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ), 
                  child: Text('Estou me sentindo melhor :)',
                    style: TextStyle(color: Color.fromARGB(255, 66, 75, 79)),  
                  )
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Tecnicas1())
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(217, 217, 217, 217),
                  fixedSize: Size(300,50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                ),
                child: Text('Quero repetir os exercícios',
                  style: TextStyle(color: Color.fromARGB(255, 66, 75, 79)),
                )
              )
              ],
            ),
          ],
        )
    );
  }

}