import 'dart:convert';
import 'package:dio/dio.dart';

const bool simulerPanneReseau = false;

final dio = Dio(BaseOptions(
  baseUrl: 'https://utrera.ludovic.aflokkat-projet.fr',
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 5),
  headers: {'Accept': 'application/json'},
));




// const String _reponseApiTaches = '''
// [
//   {"id": "1", "titre": "Allumer VsCode", "description": "Pour commencer à coder, il faut allumer VsCode", "categorie": "Travail", "date_creation": "2023-06-01", "date_echeance": "2023-06-02", "est_complete": false},
//   {"id": "2", "titre": "Faire du yoga", "description": "Pour se détendre, il faut faire du yoga", "categorie": "Santé", "date_creation": "2023-06-01", "date_echeance": "2023-06-03", "est_complete": false},
//   {"id": "3", "titre": "Faire du sport", "description": "Pour rester en forme, il faut faire du sport", "categorie": "Santé", "date_creation": "2023-06-01", "date_echeance": "2023-06-04", "est_complete": false},
//   {"id": "4", "titre": "Peser ses mots", "description": "Pour ne pas blesser les autres, il faut peser ses mots", "categorie": "Communication", "date_creation": "2023-06-01", "date_echeance": "2023-06-05", "est_complete": false}
// ]
// ''';

class ReseauIndisponibleException implements Exception {
  final String message;
  const ReseauIndisponibleException(this.message);
  @override
  String toString() => message;
}

class TacheRemoteDataSource {
  const TacheRemoteDataSource();

  Future<List<Map<String, dynamic>>> recupererTachesBrutes() async {
    await Future.delayed(const Duration(seconds:1));
    if (simulerPanneReseau) {
      throw const ReseauIndisponibleException('Service de tâches indisponible');
    }
    try{
       final response = await dio.get('/getTaches');
      
       return List<Map<String, dynamic>>.from(response.data);
    }catch(e){
      throw const ReseauIndisponibleException('Service de tâches indisponible');
    }
   
    
  }
}
