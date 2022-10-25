import 'package:flutter_core/presentation/presentation.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

part 'recurso_form_state.freezed.dart';

@freezed
class RecursoFormState with _$RecursoFormState implements ViewModelState {
  const RecursoFormState._();

  const factory RecursoFormState(
      {@Default(false) bool loading,
      String? id,
      Recurso? recurso}) = _RecursoFormState;

  factory RecursoFormState.initial({String? id}) => RecursoFormState(id: id);
}
