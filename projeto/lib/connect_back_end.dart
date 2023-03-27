/**
 * Programa : connect_back_end.dart
 * Descrição : conceta ao servidor para requisitar o movimento do robo
 * Autor : Augusto dos Santos
 * Última edição : 2/3/2023
*/
///

import 'package:http/http.dart' as http;

var ip = '192.168.1.100:5000';

var listaLocais = [
  "Auditorio",
  "Banheiros",
  "Chefia",
  "Copa",
  "Graduacao",
  "Home",
  "LE-1",
  "LE-2",
  "LE-3",
  "LE-4",
  "LE-5",
  "Lig",
  "Maker",
  "PPG-CC4",
  "Recepcao",
  "Reunioes",
  "Suporte"
];

// Função que recebe o destino do botão e passa pro back-end
Future<bool> enviaLocal(local) async {
  // Verificando se o local existe
  if (!listaLocais.contains(local)) {
    print("nao existe este local");
    return false;
  } else {
    print('http://$ip/ros/goTo/$local');

    var resposta =
        await http.get((Uri.parse('http://$ip/ros/goTo/$local')));
    // Testando a resposta da API
    if (resposta == 200) {
      return false;
    }
    return true;
  }
}

// Funçõa que para o robo
Future<bool> pararRobo() async {
  print('pare!');
  var resposta = await http.get((Uri.parse('http://${ip}/ros/cancel')));
  return false;
}
