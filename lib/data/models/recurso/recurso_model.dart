import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

part 'recurso_model.freezed.dart';
part 'recurso_model.g.dart';

@freezed
class RecursoModel with _$RecursoModel {
  const RecursoModel._();

  const factory RecursoModel(
      {required String codigo,
      required String descricao,
      String? tipo,
      String? recurso,
      int? tenant,
      GrupoDeRecursoModel? grupoDeRecurso,
      double? custoHora}) = _RecursoModel;

  factory RecursoModel.fromJson(Map<String, dynamic> json) =>
      _$RecursoModelFromJson(json);

  factory RecursoModel.fromEntity(Recurso recurso) {
    return RecursoModel(
        recurso: recurso.id,
        codigo: recurso.codigo,
        descricao: recurso.descricao,
        tipo: recurso.tipo?.valor,
        grupoDeRecurso: GrupoDeRecursoModel.fromEntity(recurso.grupoDeRecurso!),
        custoHora: recurso.custoHora,
        tenant: 123);
  }

  Recurso toEntity() {
    return Recurso(
        id: recurso,
        codigo: codigo,
        descricao: descricao,
        tipo: tipo != null ? TipoDeRecurso.fromEntity(tipo!) : null);
  }
}
