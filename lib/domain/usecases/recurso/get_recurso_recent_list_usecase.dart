import 'package:pcp/domain/domain.dart';

abstract class IGetRecursoRecentListUsecase {
  Future<List<Recurso>> call();
}

class GetRecursoRecentListUsecase implements IGetRecursoRecentListUsecase {
  final IRecursoRepository repository;

  GetRecursoRecentListUsecase({required this.repository});

  @override
  Future<List<Recurso>> call() {
    return repository.getRecentList();
  }
}
