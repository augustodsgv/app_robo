/**
 * Programa : generic_button.dart
 * Descrição : Botão padronizado usado no app
 * Autor : Augusto dos Santos
 * Última edição : 11/03/2023
*/
///
import 'package:flutter/material.dart';
import 'package:projeto/estilos/cores.dart';

class GenericButton extends StatelessWidget {
  final String texto;
  final Function() onPressed;
  const GenericButton({super.key, required this.onPressed, required this.texto});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: Text(
        texto,
        style: const TextStyle(color: corTextoBotao, fontSize: 20),
        
      ),
    );
  }
}
