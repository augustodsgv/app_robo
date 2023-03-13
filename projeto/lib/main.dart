import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(home: AppRobo()));
}

// Classe App que chama as demais
class AppRobo extends StatelessWidget {
  const AppRobo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
