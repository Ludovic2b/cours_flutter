import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../classes/compteur_notifier.dart';

class CompteurWidgetRiverpod extends ConsumerWidget {
   @override
   Widget build(BuildContext context, WidgetRef ref) {
     final compteur = ref.watch(compteurProvider);
     return TextButton(
       onPressed: () {
         ref.read(compteurProvider.notifier).incrementeur();
       },
       child: Text('Le texte a été cliqué $compteur fois'),
     );
   }
 }