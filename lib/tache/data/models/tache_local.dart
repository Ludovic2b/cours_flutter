import 'package:demoaflokkat/tache/domain/entities/tache.dart';
import 'package:isar/isar.dart';

part 'tache_local.g.dart';

@collection
class TacheLocal {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String tacheId;

  late String titre;
  String? description;
  String? categorie;
  String? dateCreation;
  String? dateEcheance;
  late bool estComplete;

  static TacheLocal depuisEntite(Tache tache) {
    return TacheLocal()
      ..tacheId = tache.id
      ..titre = tache.titre
      ..description = tache.description
      ..categorie = tache.categorie
      ..dateCreation = tache.dateCreation
      ..dateEcheance = tache.dateEcheance
      ..estComplete = tache.estComplete;
  }

  Tache versEntite() {
    return Tache(
      id: tacheId,
      titre: titre,
      description: description,
      categorie: categorie,
      dateCreation: dateCreation,
      dateEcheance: dateEcheance,
      estComplete: estComplete,
    );
  }
}
