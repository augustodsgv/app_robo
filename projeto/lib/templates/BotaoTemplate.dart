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
}
*/