import 'package:demoaflokkat/classes/tache.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltreNotifier extends Notifier<List<Tache>> {
  @override build() => ref.watch(providerTache);

  void filtrerParCategorie(String texte) {
      state = ref.watch(providerTache).where((tache) => tache.categorie == texte).toList();
  }

  void toutAfficher() {
      state = ref.watch(providerTache);
  }
}

final filtreNotifierProvider = NotifierProvider<FiltreNotifier, List<Tache>>(FiltreNotifier.new);