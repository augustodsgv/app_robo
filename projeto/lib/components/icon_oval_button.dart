/**
 * Programa : icon_oval_button.dart
 * Decrição : 
 * Autores : Augusto dos Santos e Gabrielly Castilho
 * Última edição : 14/03/2023
 */
///
import 'package:flutter/material.dart';
import 'package:projeto/estilos/fontes.dart';
import 'package:projeto/estilos/cores.dart';

class IconOvalButton extends StatelessWidget {
  final String texto;
  final Function() onPressed;
  final IconData icone;

  const IconOvalButton({super.key, required this.texto, required this.onPressed, required this.icone});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed(), //chamada da função
        style: ElevatedButton.styleFrom(
            backgroundColor: corApp,
            fixedSize: Size(300, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        label : Text(
          texto,
          style: TextStyle(
            color: corTextoBotao)
          ),
        icon: Icon(
          icone,
          color : corBotao,
        ),
        );
  }
}
