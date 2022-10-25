import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

class GrupoDeRecursoRepository implements IGrupoDeRecursoRepository {
  final IProducaoDatasource datasource;
  final ILocalDatasource localDatasource;
  final String boxName = 'grupo-de-recursos';

  GrupoDeRecursoRepository(
      {required this.datasource, required this.localDatasource});

  @override
  Future<Either<Failure, List<GrupoDeRecurso>>> getList(
      {String? search}) async {
    try {
      final response = await datasource.getGrupoDeRecursoList(search: search);

      return Right(response.result.map((e) => e.toEntity()).toList());
    } catch (e) {
      Log.e(e);

      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GrupoDeRecurso>> getItem(String id) async {
    try {
      final response = await datasource.getGrupoDeRecurso(id);
      GrupoDeRecurso grupoDeRecurso = response.toEntity();

      await insertRecentItem(grupoDeRecurso);

      return Right(grupoDeRecurso);
    } catch (e) {
      Log.e(e);

      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> save(GrupoDeRecurso item) async {
    try {
      final model = GrupoDeRecursoModel.fromEntity(item);

      final response = await (item.id != null
          ? datasource.updateGrupoDeRecurso(item.id!, model)
          : datasource.insertGrupoDeRecurso(model));

      await insertRecentItem(item);

      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<void> insertRecentItem(GrupoDeRecurso grupoDeRecurso) async {
    if (grupoDeRecurso.id == null) {
      return;
    }

    final values = await localDatasource.getValues(boxName);

    List<GrupoDeRecurso> list =
        values.map((e) => GrupoDeRecursoModel.fromJson(e).toEntity()).toList();

    final index = list.indexWhere((element) => element.id == grupoDeRecurso.id);

    if (index >= 0) {
      list.removeAt(index);
    }

    if (list.isEmpty) {
      list.add(grupoDeRecurso);
    } else {
      list.insert(0, grupoDeRecurso);
    }

    if (list.length > 5) {
      list.removeLast();
    }

    await localDatasource.setAll(boxName,
        list.map((e) => GrupoDeRecursoModel.fromEntity(e).toJson()).toList());
  }

  @override
  Future<List<GrupoDeRecurso>> getRecentList() async {
    final values = await localDatasource.getValues(boxName);

    List<GrupoDeRecurso> list =
        values.map((e) => GrupoDeRecursoModel.fromJson(e).toEntity()).toList();

    return list;
  }
}
