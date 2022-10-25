import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/data/data.dart';

part 'grupo_de_recurso_list_model.freezed.dart';
part 'grupo_de_recurso_list_model.g.dart';

@freezed
class GrupoDeRecursoListModel with _$GrupoDeRecursoListModel {
  const GrupoDeRecursoListModel._();

  const factory GrupoDeRecursoListModel({
    required List<GrupoDeRecursoModel> result,
  }) = _GrupoDeRecursoListModel;

  factory GrupoDeRecursoListModel.fromJson(Map<String, dynamic> json) =>
      _$GrupoDeRecursoListModelFromJson(json);
}
