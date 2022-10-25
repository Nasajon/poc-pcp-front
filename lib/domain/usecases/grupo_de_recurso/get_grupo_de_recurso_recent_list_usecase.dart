import 'package:pcp/domain/domain.dart';

abstract class IGetGrupoDeRecursoRecentListUsecase {
  Future<List<GrupoDeRecurso>> call();
}

class GetGrupoDeRecursoRecentListUsecase
    implements IGetGrupoDeRecursoRecentListUsecase {
  final IGrupoDeRecursoRepository repository;

  GetGrupoDeRecursoRecentListUsecase({required this.repository});

  @override
  Future<List<GrupoDeRecurso>> call() {
    return repository.getRecentList();
  }
}
