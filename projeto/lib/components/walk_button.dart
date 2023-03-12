/**
 * Descrição : Botão que mostras os locais a qual o robo irá
 * Autor : Augusto dos Santos
 * Data : 11/03/2023
 */

import 'package:flutter/material.dart';
import 'package:projeto/cores.dart';
import 'package:projeto/estilos.dart';

class WalkButton extends StatefulWidget {
  Null Function() onPressed;
  final String texto;
  final Color corBotao;
  final Color corTexto;
  final IconData icone;
  final Color corIcone;
  final String textoCard;

  WalkButton({
    super.key,
    required this.onPressed,
    required this.texto,
    required this.corBotao,
    required this.corTexto,
    required this.icone,
    required this.corIcone,
    required this.textoCard,
  });

  @override
  _WalkButtonState createState() => _WalkButtonState();
}

class _WalkButtonState extends State<WalkButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: corApp,
        child: Column(children: [
          Text(widget.textoCard),
          ElevatedButton.icon(
            // Função do botão
            onPressed: widget.onPressed,

            // Estilo do botão
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.corBotao,
              fixedSize: Size(150, 50),
              elevation: 8,
              shadowColor: Color.fromARGB(255, 69, 78, 207),
            ),
            // Texto do botão
            label: Text(
              widget.texto,
              style: TextStyle(color: widget.corTexto),
            ),

            // Icone do botão
            icon: Icon(
              widget.icone,
              color: widget.corIcone,
            ),
          )
        ])
      );
  }
}
