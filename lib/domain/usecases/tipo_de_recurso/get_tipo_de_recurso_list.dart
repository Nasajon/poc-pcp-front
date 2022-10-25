import 'package:pcp/domain/domain.dart';

abstract class IGetTipoDeRecursoListUsecase {
  List<TipoDeRecurso> call();
}

class GetTipoDeRecursoListUsecase implements IGetTipoDeRecursoListUsecase {
  GetTipoDeRecursoListUsecase();

  @override
  List<TipoDeRecurso> call() {
    final tiposDeRecurso = [
      TipoDeRecurso.equipamento(),
      TipoDeRecurso.maoDeObra(),
      TipoDeRecurso.postoDeTrabalho(),
      TipoDeRecurso.outros(),
    ];

    tiposDeRecurso.sort((a, b) => a.descricao.compareTo(b.descricao));

    return tiposDeRecurso;
  }
}
