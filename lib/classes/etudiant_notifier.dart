import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EtudiantsNotifier extends AsyncNotifier<List<Etudiant>> {
  @override
  Future<List<Etudiant>> build() => Etudiant.chargerEtudiants();
}

final etudiantsProvider =
    AsyncNotifierProvider<EtudiantsNotifier, List<Etudiant>>(
  EtudiantsNotifier.new,
);
