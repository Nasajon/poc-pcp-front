import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

abstract class IGetRecursoUsecase {
  Future<Either<Failure, Recurso>> call(String id);
}

class GetRecursoUsecase implements IGetRecursoUsecase {
  final IRecursoRepository repository;

  GetRecursoUsecase({required this.repository});

  @override
  Future<Either<Failure, Recurso>> call(String id) {
    return repository.getItem(id);
  }
}
