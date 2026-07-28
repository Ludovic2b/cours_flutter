import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:demoaflokkat/classes/utilisateur.dart';
import 'package:demoaflokkat/widgets/profil_widget.dart';
import 'package:demoaflokkat/widgets/salutation_widget.dart';
import 'package:demoaflokkat/widgets/compteur_widget.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  final etudiants = await Etudiant.chargerEtudiants();
  runApp(MainApp(etudiants: etudiants));
}

class MainApp extends StatelessWidget {
  final List<Etudiant> etudiants;

  const MainApp({required this.etudiants, super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF179AAF)),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF179AAF), brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: ProfilWidget(utilisateur: Utilisateur(
          nom: 'John Doe',
          role: 'Admin',
          email: 'john.doe@example.com',
          avatar: 'https://www.w3schools.com/howto/img_avatar.png'
        ))
      ),
    );
  }
}
