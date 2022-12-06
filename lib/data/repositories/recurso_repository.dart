import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

class RecursoRepository implements IRecursoRepository {
  final IProducaoDatasource datasource;
  final ILocalDatasource localDatasource;
  final String boxName = 'recursos';

  RecursoRepository({required this.datasource, required this.localDatasource});

  @override
  Future<Either<Failure, List<Recurso>>> getList(
      {String? search, GrupoDeRecurso? grupoDeRecurso}) async {
    try {
      final response = await datasource.getRecursoList(
          search: search, grupoDeRecurso: grupoDeRecurso?.id);

      return Right(response.result.map((e) => e.toEntity()).toList());
    } catch (e) {
      Log.e(e);

      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Recurso>> getItem(String id) async {
    try {
      final response = await datasource.getRecurso(id);
      final entity = response.toEntity();

      insertRecentItem(entity);

      return Right(entity);
    } catch (e) {
      Log.e(e);

      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> save(Recurso item) async {
    try {
      final model = RecursoModel.fromEntity(item);

      final response = await (item.id != null
          ? datasource.updateRecurso(item.id!, model)
          : datasource.insertRecurso(model));

      await insertRecentItem(item);

      return Right(response);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  Future<void> insertRecentItem(Recurso recurso) async {
    final values = await localDatasource.getValues(boxName);

    List<Recurso> list =
        values.map((e) => RecursoModel.fromJson(e).toEntity()).toList();

    final index = list.indexWhere((element) => element.id == recurso.id);

    if (index >= 0) {
      list.removeAt(index);
    }

    if (list.isEmpty) {
      list.add(recurso);
    } else {
      list.insert(0, recurso);
    }

    if (list.length > 5) {
      list.removeLast();
    }

    localDatasource.setAll(
        boxName, list.map((e) => RecursoModel.fromEntity(e).toJson()).toList());
  }

  @override
  Future<List<Recurso>> getRecentList() async {
    final values = await localDatasource.getValues(boxName);

    List<Recurso> list =
        values.map((e) => RecursoModel.fromJson(e).toEntity()).toList();

    return list;
  }
}
