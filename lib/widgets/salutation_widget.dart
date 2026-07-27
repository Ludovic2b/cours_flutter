import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:flutter/material.dart';

class SalutationWidget extends StatelessWidget {
  final String nom;
  final List<Etudiant> etudiants;

  const SalutationWidget({required this.nom, required this.etudiants, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: etudiants.length,
        itemBuilder: (context, index) {
          final etudiant = etudiants[index];
           return ListTile(
            leading: CircleAvatar(
              child: Text(etudiant.nom[0]),
            ),
            trailing: Text(etudiant.mention),
            title: Text(etudiant.nom),
            subtitle: Text('Moyenne : ${etudiant.moyenne ?? 'N/A'} - Mention : ${etudiant.mention}'),
          
          );
        },
      ),
    );
  }
}
           