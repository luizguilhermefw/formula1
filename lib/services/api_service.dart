// import 'dart:convert';
// import 'package:http/http.dart' as http;import '../models/piloto.dart';
// import '../models/resultado_piloto.dart';
//
// class ApiService {
//   static const String baseUrlSportMonks = 'https://f1.sportmonks.com/api/v1.0';
//   static const String apiKey = 'ZscYVztzdRpFG9U6ZxXVvc52lKmzyEXLIWfMLxvBN80PUVsebmba0kmzHGmY';
//
//   Future<List<Piloto>> buscarPilotosComPosicoesEPontuacoes() async {
//     const int seasonId = 6;
//
//     final response = await http.get(
//       Uri.parse('$baseUrlSportMonks/standings/season/$seasonId?api_token=$apiKey&include=driver,team'),
//     );
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final List<dynamic> standings = data['data'];
//       List<Piloto> pilotos = [];
//
//       for (var standing in standings) {
//         final driverData = standing['driver']['data'];
//         final teamData = standing['team']['data'];
//         final pontos = standing['points'];
//         final posicao = standing['position'];
//
//         pilotos.add(Piloto(
//           id: driverData['id'],
//           nome: driverData['fullname'],
//           equipe: teamData['name'],
//           posicao: posicao,
//           pontuacao: pontos,
//           fotoUrl: driverData['image'],
//         ));}
//
//       return pilotos;
//     } else {
//       throw Exception('Falha ao buscar pilotos da SportMonks API: ${response.statusCode}');
//     }
//   }
//
//   Future<List<ResultadoPiloto>> buscarResultadosPiloto(int driverId, int seasonId) async {
//     final response = await http.get(
//       Uri.parse('$baseUrlSportMonks/drivers/$driverId/season/$seasonId/results?api_token=$apiKey'),
//     );
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final List<dynamic> resultsData = data['data'];
//       List<ResultadoPiloto> resultados = [];
//
//       for (var result in resultsData) {
//         resultados.add(ResultadoPiloto.fromJson(result));
//       }
//
//       return resultados;
//     } else {
//       throw Exception('Falha ao buscar resultados do piloto: ${response.statusCode}');
//     }
//   }
// }