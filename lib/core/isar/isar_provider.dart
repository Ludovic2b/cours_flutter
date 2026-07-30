import 'package:demoaflokkat/classes/produit_local.dart';
import 'package:demoaflokkat/tache/data/models/tache_local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final isarProvider = FutureProvider<Isar>((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open(
    [ProduitLocalSchema, TacheLocalSchema],
    directory: dir.path,
  );
});
