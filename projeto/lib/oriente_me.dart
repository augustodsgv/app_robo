import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Função que envia mensagem para o back-end
Future<bool> recebeMensagem() async {
  var resposta = await http.get((Uri.parse('http://10.0.2.2:8080')));
  if (resposta.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

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

