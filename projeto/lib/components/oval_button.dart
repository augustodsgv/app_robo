/**
 * Programa : ova_button.dart
 * Decrição : botao oval simples
 * Autores : Augusto dos Santos e Gabrielly Castilho
 * Última edição : 15/03/2023
 */
///
import 'package:flutter/material.dart';
import 'package:projeto/estilos/fontes.dart';
import 'package:projeto/estilos/cores.dart';

class OvalButton extends StatelessWidget{
  final String texto;
  final Function () onPressed;

  const OvalButton({super.key, required this.texto, required this.onPressed});

  @override
  Widget build(BuildContext context){
  return 
    ElevatedButton(
      onPressed: () => onPressed(), //chamada da função
      style: ElevatedButton.styleFrom(
        backgroundColor: corApp,
        fixedSize: Size(600, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        )
      ),
      child: 
        Text(
          texto, 
          style: TextStyle(
            color: corTextoBotao,
            fontSize: 30)
        )

  );
  }
}