import 'package:flutter/material.dart';
import 'package:demoaflokkat/meteo/data/datasources/meteo_remote_datasource.dart';
import 'package:demoaflokkat/meteo/data/repositories/meteo_repository_impl.dart';
import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';
import 'package:demoaflokkat/meteo/domain/repositories/meteo_repository.dart';
import 'package:demoaflokkat/meteo/domain/usecases/calculer_conseil_meteo.dart';
import 'package:demoaflokkat/meteo/presentation/widgets/meteo_contenu_view.dart';
import 'package:demoaflokkat/meteo/presentation/widgets/meteo_erreur_view.dart';

class MeteoPage extends StatefulWidget {
  final MeteoRepository repository;
  final CalculerConseilMeteo calculerConseil;

  const MeteoPage({
    this.repository = const MeteoRepositoryImpl(MeteoRemoteDataSource()),
    this.calculerConseil = const CalculerConseilMeteo(),
    super.key,
  });

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  bool _chargement = true;
  String? _erreur;
  Meteo? _meteo;

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
      final meteo = await widget.repository.obtenirMeteoActuelle();
      setState(() {
        _meteo = meteo;
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
      return MeteoErreurView(erreur: _erreur!, onReessayer: _chargerMeteo);
    }
    return MeteoContenuView(
      meteo: _meteo!,
      conseil: widget.calculerConseil(_meteo!),
    );
  }
}
