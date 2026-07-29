import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';


class MeteoModel extends Meteo {
  const MeteoModel({
    required super.ville,
    required super.pays,
    required super.temperatureC,
    required super.condition,
    required super.humidite,
    required super.ventKmh,
    required super.horodatage,
  });

  factory MeteoModel.fromJson(Map<String, dynamic> json) {
    return MeteoModel(
      ville: json['ville'] as String,
      pays: json['pays'] as String,
      temperatureC: (json['temperature'] as num).toDouble(),
      condition: _conditionDepuisJson(json['condition'] as String),
      humidite: json['humidite'] as int,
      ventKmh: (json['vent_kmh'] as num).toDouble(),
      horodatage: DateTime.parse(json['horodatage'] as String),
    );
  }

  static ConditionMeteo _conditionDepuisJson(String valeur) {
    switch (valeur) {
      case 'ensoleille':
        return ConditionMeteo.ensoleille;
      case 'nuageux':
        return ConditionMeteo.nuageux;
      case 'pluie':
        return ConditionMeteo.pluie;
      default:
        return ConditionMeteo.inconnu;
    }
  }
}
