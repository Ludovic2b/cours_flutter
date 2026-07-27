class Etudiant{
  final String nom;
  final double? moyenne;

  const Etudiant({required this.nom, this.moyenne});

  String get mention => switch(moyenne){
    null => 'Aucune mention',
    >= 16.0 => 'Très bien',
    >= 14.0 => 'Bien',
    >= 12.0 => 'Assez bien',
    _ => 'Non passable',
  };


  static Future<List<Etudiant>> chargerEtudiants() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Etudiant(nom: 'Marc\'Antoine', moyenne: 15.0),
      Etudiant(nom: 'Jean-Michel', moyenne: 18.0),
      Etudiant(nom: 'Mario', moyenne: 18.0),
      Etudiant(nom: 'David', moyenne: 18.0),
      Etudiant(nom: 'Swann', moyenne: 18.0),
      Etudiant(nom: 'Badr', moyenne: 18.0),
      Etudiant(nom: 'Alexis', moyenne: null),
    ];
  }

  static Stream<int> chargerEtudiantsCount() async* {
    final etudiants = await chargerEtudiants();
    for (int i = 1; i <= etudiants.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      yield i;
    }
  }
}