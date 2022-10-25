import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

part 'grupo_de_recurso_form_state.freezed.dart';

@freezed
class GrupoDeRecursoFormState extends ViewModelState
    with _$GrupoDeRecursoFormState {
  const GrupoDeRecursoFormState._();

  const factory GrupoDeRecursoFormState(
      {@Default(false) bool loading,
      String? id,
      GrupoDeRecurso? grupoDeRecurso}) = _GrupoDeRecursoFormState;

  factory GrupoDeRecursoFormState.initial({String? id}) =>
      GrupoDeRecursoFormState(id: id);
}
