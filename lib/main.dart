import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:demoaflokkat/classes/utilisateur.dart';
import 'package:demoaflokkat/widgets/compteur_widget_riverpod.dart';
import 'package:demoaflokkat/widgets/liste_etudiant_widget.dart';
import 'package:demoaflokkat/widgets/profil_widget.dart';
import 'package:demoaflokkat/widgets/salutation_widget.dart';
import 'package:demoaflokkat/widgets/compteur_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


Future<void> main() async {
  final etudiants = await Etudiant.chargerEtudiants();
  runApp(MainApp(etudiants: etudiants));
}

class MainApp extends StatefulWidget {
  final List<Etudiant> etudiants;

  const MainApp({required this.etudiants, super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {

    return  ProviderScope(
      child: MaterialApp(
        themeMode: _themeMode,
        theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF179AAF)),
          useMaterial3: true,
        ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF179AAF), brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil'),
          actions: [
            IconButton(
              icon: Icon(_themeMode == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode),
              onPressed: _toggleTheme,
            ),
          ],
        ),
        body: ListeEtudiantWidget(),
      ),
    ));
  }
}
