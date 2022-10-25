import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/domain/domain.dart';

part 'recurso_list_state.freezed.dart';

@freezed
class RecursoListState extends ViewModelState with _$RecursoListState {
  const RecursoListState._();

  const factory RecursoListState(
      {@Default(false) bool loading,
      List<Recurso>? recursos,
      List<Recurso>? recentRecursos}) = _RecursoListState;

  factory RecursoListState.initial() => const RecursoListState();
}
