import 'package:flutter_riverpod/flutter_riverpod.dart';

class Tache {
  String? id;
  String? titre;
  String? description;
  String? categorie;
  String? dateCreation;
  String? dateEcheance;
  bool? estComplete;

  Tache({
    this.id,
    this.titre,
    this.description,
    this.categorie,
    this.dateCreation,
    this.dateEcheance,
    this.estComplete = false,
  });

  
}

final providerTache = Provider<List<Tache>>((ref) => [
        Tache(
          id: '1',
          titre: 'Allumer VsCode',
          description: 'Pour commencer à coder, il faut allumer VsCode',
          categorie: 'Travail',
          dateCreation: '2023-06-01',
          dateEcheance: '2023-06-02',
          estComplete: false,
        ),
        Tache(
          id: '2',
          titre: 'Faire du yoga',
          description: 'Pour se détendre, il faut faire du yoga',
          categorie: 'Santé',
          dateCreation: '2023-06-01',
          dateEcheance: '2023-06-03',
          estComplete: false,
        ),
        Tache(
          id: '3',
          titre: 'Faire du sport',
          categorie: 'Santé',
          description: 'Pour rester en forme, il faut faire du sport',
          dateCreation: '2023-06-01',
          dateEcheance: '2023-06-04',
          estComplete: false,
        ),
        Tache(
          id: '4',
          titre: 'Peser ses mots',
          description: 'Pour ne pas blesser les autres, il faut peser ses mots',
          categorie: 'Communication',
          dateCreation: '2023-06-01',
          dateEcheance: '2023-06-05',
          estComplete: false,
        ),
      ]);