/*
Programa : connect_back_end.dart
Descrição : conceta ao servidor para requisitar o movimento do robo
Autor : Augusto dos Santos
Data : 2/3/2023
*/

import 'package:http/http.dart' as http;

var ip = '192.168.0.200:5000';
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
void enviaLocal(local) async {
  // Verificando se o local existe
  if (!listaLocais.contains(local)) {
    print("nao existe este local");
  } else {
    print(ip + '/ros/goTo/' + local.toString());
    var resposta =
        await http.get((Uri.parse('http://' + ip + '/ros/goTo/' + local)));
  }
}
