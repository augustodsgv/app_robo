/**
 * Programa : generic_icon_button.dart
 * Descrição : Botão com ícone padronizado usado no app
 * Autor : Augusto dos Santos
 * Última edição : 11/03/2023
*/
///
import 'package:flutter/material.dart';
import 'package:projeto/estilos/cores.dart';

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
          fixedSize: const Size(300, 100),
          //fixedSize: const Size(150, 50),
          elevation: 4,
          shadowColor: corSombra,
        ),
        // Texto do botão
        label: Text(
          texto,
          style: const TextStyle(color: corTextoBotao, fontSize: 20),
        ),
        icon: Icon(
          icone,
          color: corTextoBotao,
        ));
  }
}
