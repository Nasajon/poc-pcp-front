import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

abstract class IGetGrupoDeRecursoListUsecase {
  Future<Either<Failure, List<GrupoDeRecurso>>> call({String? search});
}

class GetGrupoDeRecursoListUsecase implements IGetGrupoDeRecursoListUsecase {
  final IGrupoDeRecursoRepository repository;

  GetGrupoDeRecursoListUsecase({required this.repository});

  @override
  Future<Either<Failure, List<GrupoDeRecurso>>> call({String? search}) {
    return repository.getList(search: search);
  }
}
