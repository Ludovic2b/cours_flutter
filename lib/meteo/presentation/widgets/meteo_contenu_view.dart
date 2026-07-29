import 'package:flutter/material.dart';
import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';

class MeteoContenuView extends StatelessWidget {
  final Meteo meteo;
  final String conseil;

  const MeteoContenuView({
    required this.meteo,
    required this.conseil,
    super.key,
  });

  static const Map<ConditionMeteo, (String, IconData)> _affichageCondition = {
    ConditionMeteo.ensoleille: ('Ensoleillé', Icons.wb_sunny),
    ConditionMeteo.nuageux: ('Nuageux', Icons.cloud),
    ConditionMeteo.pluie: ('Pluie', Icons.umbrella),
    ConditionMeteo.inconnu: ('Inconnu', Icons.help_outline),
  };

  @override
  Widget build(BuildContext context) {
    final (libelle, icone) = _affichageCondition[meteo.condition]!;
    final String heure =
        '${meteo.horodatage.hour.toString().padLeft(2, '0')}h'
        '${meteo.horodatage.minute.toString().padLeft(2, '0')}';

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(meteo.ville, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(icone, size: 64),
              const SizedBox(width: 16),
              Text('${meteo.temperatureC.toStringAsFixed(1)} °C',
                  style: Theme.of(context).textTheme.displaySmall),
            ],
          ),
          const SizedBox(height: 8),
          Text(libelle, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(conseil),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Humidité : ${meteo.humidite} %'),
              Text('Vent : ${meteo.ventKmh.toStringAsFixed(0)} km/h'),
            ],
          ),
          const Spacer(),
          Text('Mis à jour à $heure',
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
