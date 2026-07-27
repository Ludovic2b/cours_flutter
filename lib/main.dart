import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:demoaflokkat/widgets/salutation_widget.dart';
import 'package:demoaflokkat/widgets/compteur_widget.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  final etudiants = await Etudiant.chargerEtudiants();
  runApp(MainApp(etudiants: etudiants));
}

class MainApp extends StatelessWidget {
  final List<Etudiant> etudiants;

  const MainApp({required this.etudiants, super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: Scaffold(
        body: SalutationWidget(nom: 'Alice', etudiants: [
      Etudiant(nom: 'Marc\'Antoine', moyenne: 15.0),
      Etudiant(nom: 'Jean-Michel', moyenne: 18.0),
      Etudiant(nom: 'Mario', moyenne: 18.0),
      Etudiant(nom: 'David', moyenne: 18.0),
      Etudiant(nom: 'Swann', moyenne: 18.0),
      Etudiant(nom: 'Dorian', moyenne: null),
      Etudiant(nom: 'Badr', moyenne: 18.0),
      Etudiant(nom: 'Alexis', moyenne: 19.0),
      Etudiant(nom: 'Marc\'Antoine', moyenne: 15.0),
      Etudiant(nom: 'Jean-Michel', moyenne: 18.0),
      Etudiant(nom: 'Mario', moyenne: 18.0),
      Etudiant(nom: 'David', moyenne: 18.0),
      Etudiant(nom: 'Swann', moyenne: 18.0),
      Etudiant(nom: 'Dorian', moyenne: null),
      Etudiant(nom: 'Badr', moyenne: 18.0),
      Etudiant(nom: 'Alexis', moyenne: 19.0),
    ]),
      ),
    );
  }
}
