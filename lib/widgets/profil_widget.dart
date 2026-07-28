import 'package:demoaflokkat/classes/utilisateur.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ProfilWidget extends StatefulWidget {
  final Utilisateur utilisateur;
  const ProfilWidget({super.key, required this.utilisateur});

  @override
  State<ProfilWidget> createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  int _compteur = 0;
  @override
  Widget build(BuildContext context) {
    
  void incrementerCompteur() {
    setState(() {
      if(_compteur >= 10){
        _compteur = 0;
      } else {
        _compteur++;
      }
      print("bouton cliqué $_compteur fois");
    });
  }

    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
            Image.network(
              widget.utilisateur.avatar,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 2,
              right: 2,
              child: CircleAvatar(
                radius: 20,
                child: Text(
                  widget.utilisateur.nom[0],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              
              return ListTile(
                leading: Text(widget.utilisateur.role),
                title: Text(widget.utilisateur.nom),
                subtitle: Text(widget.utilisateur.email),
                trailing: Platform.isIOS
                    ? IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: incrementerCompteur,
                      )
                    : ElevatedButton(
                        onPressed: incrementerCompteur,
                        child: Text('Le texte a été cliqué $_compteur fois'),
                      ),
              );}
              ),
            ),
          ],
        ));
  }
}