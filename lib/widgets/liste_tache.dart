import 'package:demoaflokkat/classes/filtre_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTachesWidget extends ConsumerWidget {
  const ListTachesWidget({super.key});

   @override
   Widget build(BuildContext context, WidgetRef ref) {
     final taches = ref.watch(filtreNotifierProvider);
     return
     Column(children: [
      Row(children:[
        Spacer(),
        ElevatedButton(
          onPressed: () {
            ref.read(filtreNotifierProvider.notifier).filtrerParCategorie("Travail");
          },
          child: const Text('travail'),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            ref.read(filtreNotifierProvider.notifier).filtrerParCategorie("Santé");
          },
          child: const Text('santé'),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            ref.read(filtreNotifierProvider.notifier).filtrerParCategorie("Communication");
          },
          child: const Text('comm'),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            ref.read(filtreNotifierProvider.notifier).filtrerParCategorie("Sport");
          },
          child: const Text('sport'),
        ),
        Spacer()
        ]),
        Row(children:[
        Spacer(),
        
        ElevatedButton(
          onPressed: () {
            ref.read(filtreNotifierProvider.notifier).toutAfficher();
          },
          child: const Text('toutes'),
        ),
        Spacer()
        ]),
      Expanded(child:
      AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        child: taches.isEmpty
          ? const Text('Aucune tâche')
          : ListView.builder(
            itemCount: taches.length,
            itemBuilder: (context, index) {
              final tache = taches[index];
              return ListTile(
                leading : Text(tache.dateEcheance ?? ''),
            title: Text(tache.titre ?? ''),
            subtitle: Text(tache.description ?? ''),
            trailing: tache.estComplete == true ? const Icon(Icons.check) : null,
          );
        },
      )))
     ],);
     
   }
}