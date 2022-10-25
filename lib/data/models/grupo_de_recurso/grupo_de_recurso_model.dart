import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

part 'grupo_de_recurso_model.freezed.dart';
part 'grupo_de_recurso_model.g.dart';

@freezed
class GrupoDeRecursoModel with _$GrupoDeRecursoModel {
  const GrupoDeRecursoModel._();

  const factory GrupoDeRecursoModel(
      {required String codigo,
      required String descricao,
      required String tipo,
      String? grupoderecurso,
      int? tenant}) = _GrupoDeRecursoModel;

  factory GrupoDeRecursoModel.fromJson(Map<String, dynamic> json) =>
      _$GrupoDeRecursoModelFromJson(json);

  factory GrupoDeRecursoModel.fromEntity(GrupoDeRecurso grupoDeRecurso) {
    return GrupoDeRecursoModel(
        grupoderecurso: grupoDeRecurso.id,
        codigo: grupoDeRecurso.codigo,
        descricao: grupoDeRecurso.descricao,
        tipo: grupoDeRecurso.tipo.valor,
        tenant: 123);
  }

  GrupoDeRecurso toEntity() {
    return GrupoDeRecurso(
        id: grupoderecurso,
        codigo: codigo,
        descricao: descricao,
        tipo: TipoDeRecurso.fromEntity(tipo));
  }
}
