// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grupo_de_recurso_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GrupoDeRecursoListModel _$$_GrupoDeRecursoListModelFromJson(
        Map<String, dynamic> json) =>
    _$_GrupoDeRecursoListModel(
      result: (json['result'] as List<dynamic>)
          .map((e) => GrupoDeRecursoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GrupoDeRecursoListModelToJson(
        _$_GrupoDeRecursoListModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
