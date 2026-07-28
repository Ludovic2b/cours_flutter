import 'package:demoaflokkat/classes/etudiant_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListeEtudiantWidget extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final etudiantsAsyncValue = ref.watch(etudiantsProvider);

    return etudiantsAsyncValue.when(
      data: (etudiants) {
        return ListView.builder(
          itemCount: etudiants.length,
          itemBuilder: (context, index) {
            final etudiant = etudiants[index];
            return ListTile(
              title: Text(etudiant.nom),
              subtitle: Text('Moyenne: ${etudiant.moyenne}'),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Erreur: $error')),
    );
  }}