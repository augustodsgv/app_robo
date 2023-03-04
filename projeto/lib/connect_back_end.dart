/*
Programa : connect_back_end.dart
Descrição : conceta ao servidor para requisitar o movimento do robo
Autor : Augusto dos Santos
Data : 2/3/2023
*/
import 'package:http/http.dart' as http;

// Função que recebe o destino do botão e passa pro back-end
void enviaLocal(local) async {
  print("conectou");
  /*
  var resposta = await http.get(
      (Uri.parse('http://192.168.137.14:500/ros/goTo/' + local.toString())));
  */
  /*
  if (resposta.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  */
}
