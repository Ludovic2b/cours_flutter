import 'package:flutter/material.dart';
import 'package:demoaflokkat/meteo/presentation/pages/meteo_page.dart';

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
