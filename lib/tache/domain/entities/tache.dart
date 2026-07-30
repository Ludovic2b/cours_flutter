class Tache {
  final String id;
  final String titre;
  final String? description;
  final String? categorie;
  final String? dateCreation;
  final String? dateEcheance;
  final bool estComplete;

  const Tache({
    required this.id,
    required this.titre,
    this.description,
    this.categorie,
    this.dateCreation,
    this.dateEcheance,
    this.estComplete = false,
  });
}
