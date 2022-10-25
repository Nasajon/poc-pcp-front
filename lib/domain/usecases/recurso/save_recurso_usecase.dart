import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

abstract class ISaveRecursoUsecase {
  Future<Either<Failure, void>> call(Recurso item);
}

class SaveRecursoUsecase implements ISaveRecursoUsecase {
  final IRecursoRepository repository;

  SaveRecursoUsecase({required this.repository});

  @override
  Future<Either<Failure, void>> call(Recurso item) {
    return repository.save(item);
  }
}
