import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demoaflokkat/classes/produit_notifier.dart';

class ListeProduitWidget extends ConsumerWidget {
  const ListeProduitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(produitNotifierProvider)
        .when(
          data: (l) => ListView.builder(
            itemCount: l.length,
            itemBuilder: (context, index) {
              final produit = l[index];
              return ListTile(
                title: Text(produit.nom),
                subtitle: Text(produit.prix.toStringAsFixed(2)),
              );
            },
          ),
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => Text('Erreur : $e'),
        );
  }
}
