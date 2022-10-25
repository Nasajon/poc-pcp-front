import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

abstract class IGetGrupoDeRecursoUsecase {
  Future<Either<Failure, GrupoDeRecurso>> call(String id);
}

class GetGrupoDeRecursoUsecase implements IGetGrupoDeRecursoUsecase {
  final IGrupoDeRecursoRepository repository;

  GetGrupoDeRecursoUsecase({required this.repository});

  @override
  Future<Either<Failure, GrupoDeRecurso>> call(String id) {
    return repository.getItem(id);
  }
}
