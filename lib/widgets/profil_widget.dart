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
  bool _ouvert = false;
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

  void _toggleOuverture() {
    setState(() {
      _ouvert = !_ouvert;
    });
  }

  Color _getBackgroundColor() {
    if (Theme.of( context).brightness == Brightness.dark) {
      return Colors.pink;
    } else {
      return Colors.purple;
    }
  }

    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeInOut,
      height: _ouvert ? MediaQuery.of(context).size.height : 500,
      width: MediaQuery.of(context).size.width,
      color: _ouvert ? _getBackgroundColor() : Theme.of(context).cardColor,
      child: 
      LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
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
                leading: Text(widget.utilisateur.role,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                title: Text(widget.utilisateur.nom),
                subtitle: Text(widget.utilisateur.email),
                trailing: Platform.isIOS
                    ? TextButton(
                        onPressed: _toggleOuverture,
                        child: const Text('Ouvrir la carte'),
                      )
                    : ElevatedButton(
                        onPressed: _toggleOuverture,
                        child: Text('Déplier la carte'),
                      ),
              );}
              ),
            ),
          ],
        );
          } else {
            return Row(
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
                leading: Text(widget.utilisateur.role,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                title: Text(widget.utilisateur.nom),
                subtitle: Text(widget.utilisateur.email),
                trailing: Platform.isIOS
                    ? TextButton(
                        onPressed: _toggleOuverture,
                        child: const Text('Ouvrir la carte'),
                      )
                    : ElevatedButton(
                        onPressed: _toggleOuverture,
                        child: Text('Déplier la carte'),
                      ),
              );}
              ),
            ),
          ],
        );
          }
        },
      ),
      );
  }
}