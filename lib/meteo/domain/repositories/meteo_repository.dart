import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';

abstract class MeteoRepository {
  Future<Meteo> obtenirMeteoActuelle();
}
