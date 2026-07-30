import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:demoaflokkat/classes/produit_local.dart';

final produitNotifierProvider =
    StreamNotifierProvider<ProduitNotifier, List<ProduitLocal>>(
  ProduitNotifier.new,
);

class ProduitNotifier extends StreamNotifier<List<ProduitLocal>> {
  @override
  Stream<List<ProduitLocal>> build() {
    final supabase = Supabase.instance.client;

    return supabase
        .from('produits')
        .stream(primaryKey: ['id'])
        .order('nom')
        .map((rows) => rows.map(ProduitLocal.fromJson).toList());
  }
}