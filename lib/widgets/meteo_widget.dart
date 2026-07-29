

import 'dart:convert';
import 'package:flutter/material.dart';


const bool simulerPanne = false;


const String reponseApiMeteo = '''
{
  "ville": "Ajaccio",
  "pays": "FR",
  "temperature": 27.4,
  "condition": "ensoleille",
  "humidite": 48,
  "vent_kmh": 18.5,
  "horodatage": "2026-06-15T14:30:00"
}
''';

void main() => runApp(const MeteoApp());

class MeteoApp extends StatelessWidget {
  const MeteoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Météo (exercice J3)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF179AAF)),
      ),
      home: const MeteoPage(),
    );
  }
}

// -----------------------------------------------------------------------------
// TOUT est ici : chargement, parsing, logique métier et UI. C'est le problème.
// -----------------------------------------------------------------------------
class MeteoPage extends StatefulWidget {
  const MeteoPage({super.key});

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  bool _chargement = true;
  String? _erreur; // erreur non typée (une simple chaîne)
  Map<String, dynamic>? _donnees; // Map brute manipulée directement dans l'UI

  @override
  void initState() {
    super.initState();
    _chargerMeteo();
  }

 
  Future<void> _chargerMeteo() async {
    setState(() {
      _chargement = true;
      _erreur = null;
    });
    try {
     
      await Future.delayed(const Duration(seconds: 1));
      if (simulerPanne) {
        throw Exception('Service météo indisponible');
      }
      final Map<String, dynamic> json =
          jsonDecode(reponseApiMeteo) as Map<String, dynamic>;
      setState(() {
        _donnees = json;
        _chargement = false;
      });
    } catch (e) {
      setState(() {
        _erreur = e.toString();
        _chargement = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Météo'),
        actions: [
          IconButton(
            onPressed: _chargement ? null : _chargerMeteo,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: _construireCorps(),
    );
  }

  Widget _construireCorps() {
    if (_chargement) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_erreur != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.cloud_off, size: 48),
            const SizedBox(height: 12),
            Text('Erreur : $_erreur'),
            const SizedBox(height: 12),
            FilledButton(onPressed: _chargerMeteo, child: const Text('Réessayer')),
          ],
        ),
      );
    }

    
    final Map<String, dynamic> d = _donnees!;
    final String ville = d['ville'] as String;
    final double tempC = (d['temperature'] as num).toDouble();
    final String condition = d['condition'] as String;
    final int humidite = d['humidite'] as int;
    final double vent = (d['vent_kmh'] as num).toDouble();

   
    String libelle;
    IconData icone;
    switch (condition) {
      case 'ensoleille':
        libelle = 'Ensoleillé';
        icone = Icons.wb_sunny;
        break;
      case 'nuageux':
        libelle = 'Nuageux';
        icone = Icons.cloud;
        break;
      case 'pluie':
        libelle = 'Pluie';
        icone = Icons.umbrella;
        break;
      default:
        libelle = 'Inconnu';
        icone = Icons.help_outline;
    }

    
    String conseil;
    if (tempC >= 30) {
      conseil = 'Forte chaleur : hydratez-vous et évitez le plein soleil.';
    } else if (condition == 'pluie') {
      conseil = 'Pluie attendue : prenez un parapluie.';
    } else if (tempC < 10) {
      conseil = 'Il fait frais : couvrez-vous bien.';
    } else {
      conseil = 'Temps agréable pour une intervention sur le terrain.';
    }

    
    final DateTime dt = DateTime.parse(d['horodatage'] as String);
    final String heure =
        '${dt.hour.toString().padLeft(2, '0')}h${dt.minute.toString().padLeft(2, '0')}';

    
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ville, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(icone, size: 64),
              const SizedBox(width: 16),
              Text('${tempC.toStringAsFixed(1)} °C',
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
              Text('Humidité : $humidite %'),
              Text('Vent : ${vent.toStringAsFixed(0)} km/h'),
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