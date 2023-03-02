import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Função que recebe o destino do botão e passa pro back-end
Future<bool> enviaLocal(local) async {
  var resposta = await http.get(
      (Uri.parse('http://192.168.137.14:500/ros/goTo/' + local.toString())));
  if (resposta.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

class OrienteMe extends StatefulWidget {
  const OrienteMe({Key? key}) : super(key: key);

  @override
  _OrienteMeState createState() => _OrienteMeState();
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
              print("Auditorio");
              // enviaLocal("auditorio");
            },
            child: const Text(
              'Auditório',
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Cafezinho");
              // enviaLocal("cafezinho")
            },
            child: const Text(
              'Cafezinho',
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Banheiro");
              // enviaLocal("banheiro");
            },
            child: const Text(
              'Banheiro',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Espaço Maker");
              // enviaLocal("espaco_maker");
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
              // enviaLocal("LIG");
            },
            child: const Text(
              'LIG',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("LE");
              // enviaLocal("LE");
            },
            child: const Text(
              'LE',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {
              print("Secretaria");
              //eviaLoca("secretaria")
            },
            child: const Text(
              'secretaria',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
      ]),
    ));
  }
}
