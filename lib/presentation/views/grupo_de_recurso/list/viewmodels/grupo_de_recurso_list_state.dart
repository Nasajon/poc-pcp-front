import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

part 'grupo_de_recurso_list_state.freezed.dart';

@freezed
class GrupoDeRecursoListState extends ViewModelState
    with _$GrupoDeRecursoListState {
  const GrupoDeRecursoListState._();

  const factory GrupoDeRecursoListState(
      {@Default(false) bool loading,
      List<GrupoDeRecurso>? gruposDeRecursos,
      List<GrupoDeRecurso>? recentGruposDeRecursos}) = _GrupoDeRecursoListState;

  factory GrupoDeRecursoListState.initial() => const GrupoDeRecursoListState();
}
