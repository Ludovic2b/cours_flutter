import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompteurNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void incrementeur() => state+=2;
  void reset() => state = 0;
}

final compteurProvider = NotifierProvider<CompteurNotifier, int>(
  CompteurNotifier.new,
);