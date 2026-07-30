import 'package:demoaflokkat/tache/data/models/tache_local.dart';
import 'package:demoaflokkat/tache/domain/entities/tache.dart';
import 'package:isar/isar.dart';

class TacheLocalDataSource {
  final Isar _isar;

  const TacheLocalDataSource(this._isar);

  Future<List<TacheLocal>> obtenirTachesEnCache() {
    return _isar.tacheLocals.where().findAll();
  }

  Future<void> remplacerCache(List<Tache> taches) async {
    await _isar.writeTxn(() async {
      await _isar.tacheLocals.clear();
      await _isar.tacheLocals.putAll(taches.map(TacheLocal.depuisEntite).toList());
    });
  }
}
