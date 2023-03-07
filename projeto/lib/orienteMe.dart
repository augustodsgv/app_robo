import 'package:flutter/material.dart';
import 'templates/BotaoTemplate.dart';
import 'connect_back_end.dart';

class OrienteMe extends StatefulWidget {
  const OrienteMe({Key? key}) : super(key: key);

  @override
  _OrienteMeState createState() => _OrienteMeState();
}

bool printa(texto) {
  print(texto);
  return true;
}

class _OrienteMeState extends State {
  var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print('Home');
              enviaLocal('Home');
            },
            child: const Text(
              'Home',
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Cafezinho");
              enviaLocal("cafezinho");
            },
            child: const Text(
              'Cafezinho',
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Banheiros");
              enviaLocal("Banheiros");
            },
            child: const Text(
              'Banheiros',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Espaço Maker");
              enviaLocal("Maker");
            },
            child: const Text(
              'Espaço Maker',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("LIG");
              enviaLocal("Lig");
            },
            child: const Text(
              'Lig',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("LE-1");
              enviaLocal("LE-1");
            },
            child: const Text(
              'LE-1',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        /*
        // Secretaria
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          BotaoTemplate("secretaria", enviaLocal("secretaria")),
        ]),
        */
      ]),
    ));
  }
}
