// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurso_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecursoListModel _$$_RecursoListModelFromJson(Map<String, dynamic> json) =>
    _$_RecursoListModel(
      result: (json['result'] as List<dynamic>)
          .map((e) => RecursoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecursoListModelToJson(_$_RecursoListModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
