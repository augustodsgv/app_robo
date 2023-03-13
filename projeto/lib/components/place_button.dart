/**
 * Descrição : Botão que mostras os locais a qual o robo irá
 * Autor : Augusto dos Santos
 * Data : 11/03/2023
*/
import 'package:flutter/material.dart';
import 'package:projeto/cores.dart';


class PlaceButton extends StatelessWidget {
  final String local;
  final Function () onPressed;
  const PlaceButton({super.key, required this.onPressed, required this.local});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Função do botão
      onPressed: () => onPressed(),

      // Estilo do botão
      style: ElevatedButton.styleFrom(
        backgroundColor: corBotao,
        fixedSize: Size(150, 50),
        elevation: 8,
        shadowColor: corSombraBotao,
      ),
      // Texto do botão
      child: Text(
        local,
        style: TextStyle(color: Color.fromARGB(255, 69, 78, 217)),
      ),
    );
  }
}
