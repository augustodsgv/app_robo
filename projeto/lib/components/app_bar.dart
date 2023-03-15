/**
 * Programa : app_bar.dart
 * Decrição : app bar do app
 * Autores : Augusto dos Santos e Gabrielly Castilho
 * Última edição : 14/03/2023
 */
///
import 'package:flutter/material.dart';
import 'package:projeto/estilos/fontes.dart';
import 'package:projeto/estilos/cores.dart';

class AppBarRobo extends StatelessWidget {
  final String titulo;
  const AppBarRobo({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style:  CustomTextStyle.nameOfTextStyle,
  
      ),
      centerTitle: true,
      backgroundColor: corApp,
      shadowColor: corSombra,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.accessibility_new,
            size: 50
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
