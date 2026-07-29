import 'package:demoaflokkat/meteo/data/datasources/meteo_remote_datasource.dart';
import 'package:demoaflokkat/meteo/data/models/meteo_model.dart';
import 'package:demoaflokkat/meteo/domain/entities/meteo.dart';
import 'package:demoaflokkat/meteo/domain/repositories/meteo_repository.dart';

class MeteoRepositoryImpl implements MeteoRepository {
  final MeteoRemoteDataSource _dataSource;

  const MeteoRepositoryImpl(this._dataSource);

  @override
  Future<Meteo> obtenirMeteoActuelle() async {
    final json = await _dataSource.recupererMeteoBrute();
    return MeteoModel.fromJson(json);
  }
}
