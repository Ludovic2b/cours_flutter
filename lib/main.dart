import 'package:demoaflokkat/classes/etudiant.dart';
import 'package:demoaflokkat/widgets/liste_article_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:demoaflokkat/widgets/liste_produit_widget.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
Future<void> _nativeGoogleSignIn() async {
  /// TODO: update the Web client ID with your own.
  ///
  /// Web Client ID that you registered with Google Cloud.
  /// 
  final supabase = Supabase.instance.client;
  const webClientId = '646814601878-2t5fgla0h6s9r2cnt1pp2venfsopp13o.apps.googleusercontent.com';
  /// TODO: update the iOS client ID with your own.
  ///
  /// iOS Client ID that you registered with Google Cloud.
  const iosClientId = '646814601878-ku3deldhecprivelj4u3l5egm5jn0v1u.apps.googleusercontent.com';
  final scopes = ['email', 'profile'];
  final googleSignIn = GoogleSignIn.instance;
  await googleSignIn.initialize(
    serverClientId: webClientId,
    clientId: iosClientId,
  );
  final googleUser = await googleSignIn.authenticate();
  // or await googleSignIn.authenticate(); which will return a GoogleSignInAccount or throw an exception
  
  /// Authorization is required to obtain the access token with the appropriate scopes for Supabase authentication,
  /// while also granting permission to access user information.
  final authorization =
      await googleUser.authorizationClient.authorizationForScopes(scopes) ??
      await googleUser.authorizationClient.authorizeScopes(scopes);
  final idToken = googleUser.authentication.idToken;
  if (idToken == null) {
    throw AuthException('No ID Token found.');
  }
  final res = await supabase.auth.signInWithIdToken(
    provider: OAuthProvider.google,
    idToken: idToken,
    accessToken: authorization.accessToken,
  );

  print("utilisateur connecté : ${res.user?.email}");
  if(res.user != null) {
    print("Utilisateur connecté : ${res.user?.email}");
    await sendFileToStorage(res.user!);
  } else {
    print("Erreur lors de la connexion");
  }
  
}


Future<void> sendFileToStorage(User user) async {
  // Sélection d'une image
  final supabase = Supabase.instance.client;
  final picker = ImagePicker();
  final fichier = await picker.pickImage(
  source: ImageSource.gallery,
  );
  // Upload vers le bucket du BaaS
  if (fichier != null) {
  await supabase.storage.from('avatars').upload('user_${user.id}.jpg', File(fichier.path),);
  }
}

Future<void> main() async {
  final etudiants = await Etudiant.chargerEtudiants();
  WidgetsFlutterBinding.ensureInitialized();

  //TODO : Remplacez par vos propres informations Supabase
  await Supabase.initialize(
    url: 'https://laezdlvhdkmmaozyatwo.supabase.co',
    publishableKey: 'sb_publishable_e1UQOgYHc7Yky446PkRGxQ_xitpnvoU',
  );


  // Connexion
  // final res = await supabase.auth.signInWithPassword(
  //   email: "ludovic.utrera@aflokkat.com", password: "9rxn&\$!M*gmw\$yz",
  // );

  await _nativeGoogleSignIn(); // Appel de la fonction pour la connexion Google


  //final user = res.user;   // session + JWT gérés par le SDK

  //print('Utilisateur connecté : ${user?.email}');

  runApp(ProviderScope(child: MainApp(etudiants: etudiants)));
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
        body: const ListeProduitWidget(),
      ),
    );
  }
}
