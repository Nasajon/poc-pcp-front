import 'package:flutter_core/domain/domain.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';
import 'package:pcp/pcp.dart';

abstract class ISaveGrupoDeRecursoUsecase {
  Future<Either<Failure, void>> call(GrupoDeRecurso item);
}

class SaveGrupoDeRecursoUsecase implements ISaveGrupoDeRecursoUsecase {
  final IGrupoDeRecursoRepository repository;

  SaveGrupoDeRecursoUsecase({required this.repository});

  @override
  Future<Either<Failure, void>> call(GrupoDeRecurso item) {
    return repository.save(item);
  }
}
