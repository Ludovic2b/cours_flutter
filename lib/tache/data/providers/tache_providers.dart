import 'package:demoaflokkat/core/isar/isar_provider.dart';
import 'package:demoaflokkat/tache/data/datasources/tache_local_datasource.dart';
import 'package:demoaflokkat/tache/data/datasources/tache_remote_datasource.dart';
import 'package:demoaflokkat/tache/data/repositories/tache_repository_impl.dart';
import 'package:demoaflokkat/tache/domain/repositories/tache_repository.dart';
import 'package:demoaflokkat/tache/domain/resultats/resultat_taches.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tacheRemoteDataSourceProvider = Provider<TacheRemoteDataSource>((ref) {
  return const TacheRemoteDataSource();
});

final tacheRepositoryProvider = FutureProvider<TacheRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  final local = TacheLocalDataSource(isar);
  final remote = ref.watch(tacheRemoteDataSourceProvider);
  return TacheRepositoryImpl(remote, local);
});

class CategorieFiltreNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void filtrerParCategorie(String categorie) => state = categorie;

  void toutAfficher() => state = null;
}

final categorieFiltreProvider = NotifierProvider<CategorieFiltreNotifier, String?>(
  CategorieFiltreNotifier.new,
);

class TachesNotifier extends AsyncNotifier<ResultatTaches> {
  @override
  Future<ResultatTaches> build() async {
    final repository = await ref.watch(tacheRepositoryProvider.future);
    return repository.obtenirTaches();
  }

  Future<void> rafraichir() async {
    state = const AsyncLoading();
    final repository = await ref.read(tacheRepositoryProvider.future);
    state = AsyncData(await repository.obtenirTaches());
  }
}

final tachesNotifierProvider = AsyncNotifierProvider<TachesNotifier, ResultatTaches>(
  TachesNotifier.new,
);
