import 'package:demoaflokkat/tache/domain/entities/tache.dart';

class TacheModel extends Tache {
  const TacheModel({
    required super.id,
    required super.titre,
    super.description,
    super.categorie,
    super.dateCreation,
    super.dateEcheance,
    super.estComplete,
  });

  factory TacheModel.fromJson(Map<String, dynamic> json) {
    return TacheModel(
      id: json['id'] as String,
      titre: json['titre'] as String,
      description: json['description'] as String?,
      categorie: json['categorie'] as String?,
      dateCreation: json['date_creation'] as String?,
      dateEcheance: json['date_echeance'] as String?,
      estComplete: json['est_complete'] as bool? ?? false,
    );
  }
}
