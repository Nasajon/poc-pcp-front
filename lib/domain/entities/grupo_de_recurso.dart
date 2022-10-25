import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';
import 'package:pcp/pcp.dart';

part 'grupo_de_recurso.freezed.dart';

@freezed
class GrupoDeRecurso with _$GrupoDeRecurso {
  const factory GrupoDeRecurso(
      {String? id,
      required String codigo,
      required String descricao,
      required TipoDeRecurso tipo}) = _GrupoDeRecurso;
}
