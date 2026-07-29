import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:demoaflokkat/classes/produit_local.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demoaflokkat/widgets/liste_tache.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
Future<void> main() async {

  

  // Suppression (déconnexion)
  //await stockage.delete(key: 'jwt');

  final etudiants = await Etudiant.chargerEtudiants();
  runApp(ProviderScope(child:MainApp(etudiants: etudiants)));
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [ProduitLocalSchema],
      directory: dir.path,
    );
      // Écriture dans une transaction
    await isar.writeTxn(() async {
      await isar.produitLocals.put(ProduitLocal()..nom = 'Marteau'..prix = 12);
    });

    // Requête typée + filtre + tri
    final chers = await isar.produitLocals
        .filter().prixGreaterThan(100)
        .sortByNom().findAll();

  // Initialisation (une seule fois)
// await Hive.initFlutter();
// Hive.registerAdapter(ProduitLocalAdapter());
// final box = await Hive.openBox<ProduitLocal>('produits');

// // Écriture (chaque opération est atomique)
// // await box.add(ProduitLocal()..nom = 'Marteau'..prix = 12);
// // await box.add(ProduitLocal()..nom = 'Ordinateur Sages'..prix = 300);
// // await box.add(ProduitLocal()..nom = 'Ordinateur Ludo'..prix = 700);

// // Lecture + filtre + tri : côté Dart
// final chers = box.values.toList();

//   print('Produits chers : ${chers.map((p) => p.nom).join(', ')}');
    
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
    // Écriture dans une transaction

    return  
      MaterialApp(
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
        body: const ListTachesWidget(),
      ),
    );
  }
}
