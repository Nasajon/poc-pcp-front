import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

abstract class IGetRecursoListUsecase {
  Future<Either<Failure, List<Recurso>>> call(
      {String? search, GrupoDeRecurso? grupoDeRecurso});
}

class GetRecursoListUsecase implements IGetRecursoListUsecase {
  final IRecursoRepository repository;

  GetRecursoListUsecase({required this.repository});

  @override
  Future<Either<Failure, List<Recurso>>> call(
      {String? search, GrupoDeRecurso? grupoDeRecurso}) {
    return repository.getList(search: search, grupoDeRecurso: grupoDeRecurso);
  }
}
