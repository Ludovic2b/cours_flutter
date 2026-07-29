import 'package:flutter/material.dart';

class MeteoErreurView extends StatelessWidget {
  final String erreur;
  final VoidCallback onReessayer;

  const MeteoErreurView({
    required this.erreur,
    required this.onReessayer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.cloud_off, size: 48),
          const SizedBox(height: 12),
          Text('Erreur : $erreur'),
          const SizedBox(height: 12),
          FilledButton(onPressed: onReessayer, child: const Text('Réessayer')),
        ],
      ),
    );
  }
}
