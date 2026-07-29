import 'dart:convert';

const bool simulerPanne = false;

const String _reponseApiMeteo = '''
{
  "ville": "Ajaccio",
  "pays": "FR",
  "temperature": 27.4,
  "condition": "ensoleille",
  "humidite": 48,
  "vent_kmh": 18.5,
  "horodatage": "2026-06-15T14:30:00"
}
''';

class MeteoIndisponibleException implements Exception {
  final String message;
  const MeteoIndisponibleException(this.message);

  @override
  String toString() => message;
}

/// Source de données distante (ici simulée) : ne connaît que le JSON brut.
class MeteoRemoteDataSource {
  const MeteoRemoteDataSource();

  Future<Map<String, dynamic>> recupererMeteoBrute() async {
    await Future.delayed(const Duration(seconds: 1));
    if (simulerPanne) {
      throw const MeteoIndisponibleException('Service météo indisponible');
    }
    return jsonDecode(_reponseApiMeteo) as Map<String, dynamic>;
  }
}
