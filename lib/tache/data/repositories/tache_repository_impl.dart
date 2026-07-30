import 'package:demoaflokkat/tache/data/datasources/tache_local_datasource.dart';
import 'package:demoaflokkat/tache/data/datasources/tache_remote_datasource.dart';
import 'package:demoaflokkat/tache/data/models/tache_model.dart';
import 'package:demoaflokkat/tache/domain/repositories/tache_repository.dart';
import 'package:demoaflokkat/tache/domain/resultats/resultat_taches.dart';

class TacheRepositoryImpl implements TacheRepository {
  final TacheRemoteDataSource _remote;
  final TacheLocalDataSource _local;

  const TacheRepositoryImpl(this._remote, this._local);

  @override
  Future<ResultatTaches> obtenirTaches() async {
    try {
      final jsonTaches = await _remote.recupererTachesBrutes();
      final taches = jsonTaches.map(TacheModel.fromJson).toList();
      await _local.remplacerCache(taches);
      return ResultatTachesSucces(taches);
    } on ReseauIndisponibleException {
      final cache = await _local.obtenirTachesEnCache();
      if (cache.isEmpty) {
        return const ResultatTachesEchec('Aucune tâche disponible hors ligne.');
      }
      return ResultatTachesHorsLigne(cache.map((c) => c.versEntite()).toList());
    } catch (e) {
      return ResultatTachesEchec(e.toString());
    }
  }

   @override
  Future<ResultatTaches> obtenirTachesOfflineFirst() async {
    try {
      final cache = await _local.obtenirTachesEnCache();
      if (cache.isNotEmpty) {
        return ResultatTachesHorsLigne(cache.map((c) => c.versEntite()).toList());
      }
      final jsonTaches = await _remote.recupererTachesBrutes();
      final taches = jsonTaches.map(TacheModel.fromJson).toList();
      await _local.remplacerCache(taches);
      return ResultatTachesSucces(taches);
    } on ReseauIndisponibleException {
      final cache = await _local.obtenirTachesEnCache();
      if (cache.isEmpty) {
        return const ResultatTachesEchec('Aucune tâche disponible hors ligne.');
      }
      return ResultatTachesHorsLigne(cache.map((c) => c.versEntite()).toList());
    } catch (e) {
      return ResultatTachesEchec(e.toString());
    }
  }
}
