/*



import 'package:flutter/material.dart';
import 'package:projeto/connect_back_end.dart';

class BotaoTemplate extends StatefulWidget {
  // Neste caso deve ser um statefulwidget pois o a função passada para o onPressed é future
  final String texto; // A string é final pois o widget é imutável (???)
  void Function() onPressed; // O QUE FAZER?
  BotaoTemplate({Key? key, required this.texto, required this.onPressed}): super(key:key); // Os atributos que a classe usa são passados para o construtor do widget e nao do state

  @override
  State<BotaoTemplate> createState() => _BotaoTemplateState();
}

class _BotaoTemplateState extends State<BotaoTemplate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("botao funfou");
        widget.onPressed();
      },
      child: Text(widget.texto), // Os atributos obtidos no construtor podem ser obtidos acessando os atributos em "widget.atributo"
    );
  }
  Widget build(BuildContext context){
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
  }
}
*/