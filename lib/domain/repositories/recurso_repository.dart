import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';
import 'package:pcp/domain/repositories/repository.dart';

abstract class IRecursoRepository implements IRepository<Recurso> {
  @override
  Future<Either<Failure, List<Recurso>>> getList(
      {String? search, GrupoDeRecurso? grupoDeRecurso});
}
