import 'package:demoaflokkat/tache/domain/resultats/resultat_taches.dart';

abstract class TacheRepository {
  Future<ResultatTaches> obtenirTaches();
  Future<ResultatTaches> obtenirTachesOfflineFirst();
}
