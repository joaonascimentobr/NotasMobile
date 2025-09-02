import 'dart:convert'; // Para decodificar a resposta JSON
import 'package:http/http.dart' as http;

void main() async {
  // URL da API que você quer consultar
  var url = Uri.parse('https://68b63596e5dc090291b11b0d.mockapi.io/itemsapi');

  // Fazendo a requisição GET
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Decodificando a resposta JSON
    var data = jsonDecode(response.body);

    // Exibindo os dados no console
    print('Dados recebidos:');
    for (var item in data) {
      // Acessando as chaves corretamente do seu JSON
      print('ID: ${item['id']}');
      print('Descrição: ${item['descricao']}');
      // Pega o tempo que está em milisegundos e transforma em uma data
      print('Data de criação: ${DateTime.fromMillisecondsSinceEpoch(item['data_criacao'] * 1000)}');
      print('Data limite: ${item['data_limite']}');
      print('Usuário ID: ${item['usuario_id']}');
      print('---');
    }
  } else {
    print('Falha ao fazer a requisição. Status code: ${response.statusCode}');
  }
}
