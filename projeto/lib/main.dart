/**
 * Programa : main.dart
 * Descrição : Função principal do app
 * Autores : Augusto dos Santos e Gabrielly Castilho
 * Última edição : 13/03/2023
 */
///
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MaterialApp(home: AppRobo()));
}

// Classe App que chama a tela principal
class AppRobo extends StatelessWidget {
  const AppRobo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
