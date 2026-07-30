import 'package:demoaflokkat/tache/data/providers/tache_providers.dart';
import 'package:demoaflokkat/tache/domain/entities/tache.dart';
import 'package:demoaflokkat/tache/domain/resultats/resultat_taches.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTachesWidget extends ConsumerWidget {
  const ListTachesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultat = ref.watch(tachesNotifierProvider);
    final categorie = ref.watch(categorieFiltreProvider);

    return Column(children: [
      Row(children: [
        const Spacer(),
        ElevatedButton(
          onPressed: () => ref.read(categorieFiltreProvider.notifier).filtrerParCategorie('Travail'),
          child: const Text('travail'),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () => ref.read(categorieFiltreProvider.notifier).filtrerParCategorie('Santé'),
          child: const Text('santé'),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () => ref.read(categorieFiltreProvider.notifier).filtrerParCategorie('Communication'),
          child: const Text('comm'),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () => ref.read(categorieFiltreProvider.notifier).filtrerParCategorie('Sport'),
          child: const Text('sport'),
        ),
        const Spacer(),
      ]),
      Row(children: [
        const Spacer(),
        ElevatedButton(
          onPressed: () => ref.read(categorieFiltreProvider.notifier).toutAfficher(),
          child: const Text('toutes'),
        ),
        const Spacer(),
      ]),
      Expanded(
        child: resultat.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (erreur, _) => _ErreurView(
            message: erreur.toString(),
            onReessayer: () => ref.read(tachesNotifierProvider.notifier).rafraichir(),
          ),
          data: (r) => _ContenuView(
            resultat: r,
            categorie: categorie,
            onReessayer: () => ref.read(tachesNotifierProvider.notifier).rafraichir(),
          ),
        ),
      ),
    ]);
  }
}

class _ContenuView extends StatelessWidget {
  final ResultatTaches resultat;
  final String? categorie;
  final VoidCallback onReessayer;

  const _ContenuView({required this.resultat, required this.categorie, required this.onReessayer});

  @override
  Widget build(BuildContext context) {
    switch (resultat) {
      case ResultatTachesEchec(message: final message):
        return _ErreurView(message: message, onReessayer: onReessayer);
      case ResultatTachesSucces(taches: final taches):
        return _ListeView(taches: _filtrer(taches));
      case ResultatTachesHorsLigne(taches: final taches):
        return Column(children: [
          const _BanniereHorsLigne(),
          Expanded(child: _ListeView(taches: _filtrer(taches))),
        ]);
    }
  }

  List<Tache> _filtrer(List<Tache> taches) {
    if (categorie == null) return taches;
    return taches.where((t) => t.categorie == categorie).toList();
  }
}

class _BanniereHorsLigne extends StatelessWidget {
  const _BanniereHorsLigne();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.orange.shade100,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: const Text('Mode hors ligne : données issues du cache local'),
    );
  }
}

class _ListeView extends StatelessWidget {
  final List<Tache> taches;

  const _ListeView({required this.taches});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: taches.isEmpty
          ? const Center(child: Text('Aucune tâche'))
          : ListView.builder(
              itemCount: taches.length,
              itemBuilder: (context, index) {
                final tache = taches[index];
                return ListTile(
                  leading: Text(tache.dateEcheance ?? ''),
                  title: Text(tache.titre),
                  subtitle: Text(tache.description ?? ''),
                  trailing: tache.estComplete ? const Icon(Icons.check) : null,
                );
              },
            ),
    );
  }
}

class _ErreurView extends StatelessWidget {
  final String message;
  final VoidCallback onReessayer;

  const _ErreurView({required this.message, required this.onReessayer});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: onReessayer, child: const Text('Réessayer')),
        ],
      ),
    );
  }
}
