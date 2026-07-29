enum ConditionMeteo { ensoleille, nuageux, pluie, inconnu }

class Meteo {
  final String ville;
  final String pays;
  final double temperatureC;
  final ConditionMeteo condition;
  final int humidite;
  final double ventKmh;
  final DateTime horodatage;

  const Meteo({
    required this.ville,
    required this.pays,
    required this.temperatureC,
    required this.condition,
    required this.humidite,
    required this.ventKmh,
    required this.horodatage,
  });
}
