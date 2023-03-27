/**
 * Programa : walk_button.dart
 * Descrição : Botão que mostras os locais a qual o robo irá
 * Autor : Augusto dos Santos
 * Última edição : 11/03/2023
 */
///

import 'package:flutter/material.dart';
import 'package:projeto/estilos/cores.dart';
import 'package:projeto/estilos/fontes.dart';

class WalkButton extends StatefulWidget {
  final Null Function() onPressed;
  final String texto;
  final Color corBotao;
  final Color corTexto;
  final IconData icone;
  final Color corIcone;
  final String textoCard;

  const WalkButton({
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: corApp,
        child: Column(children: [
          Text(
            'Instruções',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: corLetrasApp
              
              )
            ),
          Text(
            widget.textoCard,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              )
            ),
            
          Padding(
            padding: const EdgeInsets.all(8.0),
            
            child: ElevatedButton.icon(
              // Função do botão
              onPressed: widget.onPressed,
          
              // Estilo do botão
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.corBotao,
                fixedSize: const Size(350, 100),
                elevation: 8,
                shadowColor: corSombra,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              // Texto do botão
              label: Text(
                widget.texto,
                style: TextStyle(
                  color: widget.corTexto,
                  fontSize: 30),
              ),
          
              // Icone do botão
              icon: Icon(
                widget.icone,
                color: widget.corIcone,
                size: 50,
              ),
              
              
            ),
          ),
        ]),
        

      );
  }
}
