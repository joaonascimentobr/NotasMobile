// import 'dart:convert'; // Para decodificar a resposta JSON
// import 'package:http/http.dart' as http;

// void main() async {
//   // URL da API que você quer consultar
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

//   // Fazendo a requisição GET
//   var response = await http.get(url);

//   // Verificando se a requisição foi bem-sucedida (status code 200)
//   if (response.statusCode == 200) {
//     // Decodificando a resposta JSON
//     var data = jsonDecode(response.body);

//     // Exibindo os dados no console
//     print('Dados recebidos:');
//     for (var item in data) {
//       print('Título: ${item['title']}');
//       print('Corpo: ${item['body']}');
//       print('---');
//     }
//   } else {
//     print('Falha ao fazer a requisição. Status code: ${response.statusCode}');
//   }
// }
