import 'package:flutter_dependencies/flutter_dependencies.dart';
import 'package:pcp/pcp.dart';

part 'recurso_list_model.freezed.dart';
part 'recurso_list_model.g.dart';

@freezed
class RecursoListModel with _$RecursoListModel {
  const RecursoListModel._();

  const factory RecursoListModel({
    required List<RecursoModel> result,
  }) = _RecursoListModel;

  factory RecursoListModel.fromJson(Map<String, dynamic> json) =>
      _$RecursoListModelFromJson(json);
}
