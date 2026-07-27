import 'package:flutter/material.dart';

class CompteurWidget extends StatefulWidget {
  const CompteurWidget({super.key});

  @override
  State<CompteurWidget> createState() => _CompteurWidgetState();
}

class _CompteurWidgetState extends State<CompteurWidget> {
  int _compteur = 0;

  void _incrementerCompteur() {
    setState(() {
      if(_compteur >= 10){
        _compteur = 0;
      } else {
        _compteur++;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
        TextButton(
          onPressed: _incrementerCompteur,
          child: Text('Le texte a été cliqué $_compteur fois'),
        );
  }
}