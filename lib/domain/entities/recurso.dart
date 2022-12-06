import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

part 'recurso.freezed.dart';

@freezed
class Recurso with _$Recurso {
  const factory Recurso(
      {String? id,
      required String codigo,
      required String descricao,
      TipoDeRecurso? tipo,
      GrupoDeRecurso? grupoDeRecurso,
      double? custoHora}) = _Recurso;
}
