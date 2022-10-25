// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurso_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecursoModel _$$_RecursoModelFromJson(Map<String, dynamic> json) =>
    _$_RecursoModel(
      codigo: json['codigo'] as String,
      descricao: json['descricao'] as String,
      tipo: json['tipo'] as String,
      id: json['id'] as String?,
      tenant: json['tenant'] as int?,
      grupoDeRecurso: json['grupoDeRecurso'] == null
          ? null
          : GrupoDeRecursoModel.fromJson(
              json['grupoDeRecurso'] as Map<String, dynamic>),
      custoHora: (json['custoHora'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RecursoModelToJson(_$_RecursoModel instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'descricao': instance.descricao,
      'tipo': instance.tipo,
      'id': instance.id,
      'tenant': instance.tenant,
      'grupoDeRecurso': instance.grupoDeRecurso,
      'custoHora': instance.custoHora,
    };
