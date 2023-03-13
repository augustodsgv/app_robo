/**
 * Descrição : Botão que mostras os locais a qual o robo irá
 * Autor : Augusto dos Santos
 * Data : 11/03/2023
*/
import 'package:flutter/material.dart';
import 'package:projeto/cores.dart';

class GenericIconButton extends StatelessWidget {
  final String texto;
  final Function() onPressed;
  final IconData icone;
  const GenericIconButton(
      {super.key,
      required this.onPressed,
      required this.texto,
      required this.icone});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        // Função do botão
        onPressed: () => onPressed(),

        // Estilo do botão
        style: ElevatedButton.styleFrom(
          backgroundColor: corBotao,
          fixedSize: const Size(150, 50),
          elevation: 4,
          shadowColor: corSombra,
        ),
        // Texto do botão
        label: Text(
          texto,
          style: const TextStyle(color: corTextoBotao),
        ),
        icon: Icon(
          icone,
          color: corTextoBotao,
        ));
  }
}
