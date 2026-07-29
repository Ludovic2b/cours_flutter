import 'package:isar/isar.dart';

part 'produit_local.g.dart';

@collection
class ProduitLocal {
  Id id = Isar.autoIncrement;
  @Index() late String nom;
  late double prix;
}



