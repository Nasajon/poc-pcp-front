// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grupo_de_recurso_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GrupoDeRecursoModel _$$_GrupoDeRecursoModelFromJson(
        Map<String, dynamic> json) =>
    _$_GrupoDeRecursoModel(
      codigo: json['codigo'] as String,
      descricao: json['descricao'] as String,
      tipo: json['tipo'] as String,
      grupoderecurso: json['grupoderecurso'] as String?,
      tenant: json['tenant'] as int?,
    );

Map<String, dynamic> _$$_GrupoDeRecursoModelToJson(
        _$_GrupoDeRecursoModel instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'descricao': instance.descricao,
      'tipo': instance.tipo,
      'grupoderecurso': instance.grupoderecurso,
      'tenant': instance.tenant,
    };
