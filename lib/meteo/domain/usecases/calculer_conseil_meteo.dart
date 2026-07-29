import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';


class CalculerConseilMeteo {
  const CalculerConseilMeteo();

  String call(Meteo meteo) {
    if (meteo.temperatureC >= 30) {
      return 'Forte chaleur : hydratez-vous et évitez le plein soleil.';
    }
    if (meteo.condition == ConditionMeteo.pluie) {
      return 'Pluie attendue : prenez un parapluie.';
    }
    if (meteo.temperatureC < 10) {
      return 'Il fait frais : couvrez-vous bien.';
    }
    return 'Temps agréable pour une intervention sur le terrain.';
  }
}
