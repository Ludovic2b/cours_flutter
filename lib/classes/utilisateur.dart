class Utilisateur{
  final String nom;
  final int age;
  Utilisateur({required this.nom,  this.age=0});

  Utilisateur.anonyme(): nom='Invité', age=0;

  bool get estMajeur => age >= 18;

  void saluer() => print('Bonjour, je suis $nom');
}