import 'package:demoaflokkat/tache/domain/entities/tache.dart';

sealed class ResultatTaches {
  const ResultatTaches();
}

final class ResultatTachesSucces extends ResultatTaches {
  final List<Tache> taches;
  const ResultatTachesSucces(this.taches);
}

final class ResultatTachesHorsLigne extends ResultatTaches {
  final List<Tache> taches;
  const ResultatTachesHorsLigne(this.taches);
}

final class ResultatTachesEchec extends ResultatTaches {
  final String message;
  const ResultatTachesEchec(this.message);
}
