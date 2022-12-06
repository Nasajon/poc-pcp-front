// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recurso_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecursoModel _$RecursoModelFromJson(Map<String, dynamic> json) {
  return _RecursoModel.fromJson(json);
}

/// @nodoc
mixin _$RecursoModel {
  String get codigo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  String? get tipo => throw _privateConstructorUsedError;
  String? get recurso => throw _privateConstructorUsedError;
  int? get tenant => throw _privateConstructorUsedError;
  GrupoDeRecursoModel? get grupoDeRecurso => throw _privateConstructorUsedError;
  double? get custoHora => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecursoModelCopyWith<RecursoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursoModelCopyWith<$Res> {
  factory $RecursoModelCopyWith(
          RecursoModel value, $Res Function(RecursoModel) then) =
      _$RecursoModelCopyWithImpl<$Res, RecursoModel>;
  @useResult
  $Res call(
      {String codigo,
      String descricao,
      String? tipo,
      String? recurso,
      int? tenant,
      GrupoDeRecursoModel? grupoDeRecurso,
      double? custoHora});

  $GrupoDeRecursoModelCopyWith<$Res>? get grupoDeRecurso;
}

/// @nodoc
class _$RecursoModelCopyWithImpl<$Res, $Val extends RecursoModel>
    implements $RecursoModelCopyWith<$Res> {
  _$RecursoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = freezed,
    Object? recurso = freezed,
    Object? tenant = freezed,
    Object? grupoDeRecurso = freezed,
    Object? custoHora = freezed,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String?,
      recurso: freezed == recurso
          ? _value.recurso
          : recurso // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as int?,
      grupoDeRecurso: freezed == grupoDeRecurso
          ? _value.grupoDeRecurso
          : grupoDeRecurso // ignore: cast_nullable_to_non_nullable
              as GrupoDeRecursoModel?,
      custoHora: freezed == custoHora
          ? _value.custoHora
          : custoHora // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GrupoDeRecursoModelCopyWith<$Res>? get grupoDeRecurso {
    if (_value.grupoDeRecurso == null) {
      return null;
    }

    return $GrupoDeRecursoModelCopyWith<$Res>(_value.grupoDeRecurso!, (value) {
      return _then(_value.copyWith(grupoDeRecurso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecursoModelCopyWith<$Res>
    implements $RecursoModelCopyWith<$Res> {
  factory _$$_RecursoModelCopyWith(
          _$_RecursoModel value, $Res Function(_$_RecursoModel) then) =
      __$$_RecursoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigo,
      String descricao,
      String? tipo,
      String? recurso,
      int? tenant,
      GrupoDeRecursoModel? grupoDeRecurso,
      double? custoHora});

  @override
  $GrupoDeRecursoModelCopyWith<$Res>? get grupoDeRecurso;
}

/// @nodoc
class __$$_RecursoModelCopyWithImpl<$Res>
    extends _$RecursoModelCopyWithImpl<$Res, _$_RecursoModel>
    implements _$$_RecursoModelCopyWith<$Res> {
  __$$_RecursoModelCopyWithImpl(
      _$_RecursoModel _value, $Res Function(_$_RecursoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = freezed,
    Object? recurso = freezed,
    Object? tenant = freezed,
    Object? grupoDeRecurso = freezed,
    Object? custoHora = freezed,
  }) {
    return _then(_$_RecursoModel(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: freezed == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String?,
      recurso: freezed == recurso
          ? _value.recurso
          : recurso // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as int?,
      grupoDeRecurso: freezed == grupoDeRecurso
          ? _value.grupoDeRecurso
          : grupoDeRecurso // ignore: cast_nullable_to_non_nullable
              as GrupoDeRecursoModel?,
      custoHora: freezed == custoHora
          ? _value.custoHora
          : custoHora // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecursoModel extends _RecursoModel {
  const _$_RecursoModel(
      {required this.codigo,
      required this.descricao,
      this.tipo,
      this.recurso,
      this.tenant,
      this.grupoDeRecurso,
      this.custoHora})
      : super._();

  factory _$_RecursoModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecursoModelFromJson(json);

  @override
  final String codigo;
  @override
  final String descricao;
  @override
  final String? tipo;
  @override
  final String? recurso;
  @override
  final int? tenant;
  @override
  final GrupoDeRecursoModel? grupoDeRecurso;
  @override
  final double? custoHora;

  @override
  String toString() {
    return 'RecursoModel(codigo: $codigo, descricao: $descricao, tipo: $tipo, recurso: $recurso, tenant: $tenant, grupoDeRecurso: $grupoDeRecurso, custoHora: $custoHora)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecursoModel &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.recurso, recurso) || other.recurso == recurso) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.grupoDeRecurso, grupoDeRecurso) ||
                other.grupoDeRecurso == grupoDeRecurso) &&
            (identical(other.custoHora, custoHora) ||
                other.custoHora == custoHora));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, descricao, tipo, recurso,
      tenant, grupoDeRecurso, custoHora);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecursoModelCopyWith<_$_RecursoModel> get copyWith =>
      __$$_RecursoModelCopyWithImpl<_$_RecursoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecursoModelToJson(
      this,
    );
  }
}

abstract class _RecursoModel extends RecursoModel {
  const factory _RecursoModel(
      {required final String codigo,
      required final String descricao,
      final String? tipo,
      final String? recurso,
      final int? tenant,
      final GrupoDeRecursoModel? grupoDeRecurso,
      final double? custoHora}) = _$_RecursoModel;
  const _RecursoModel._() : super._();

  factory _RecursoModel.fromJson(Map<String, dynamic> json) =
      _$_RecursoModel.fromJson;

  @override
  String get codigo;
  @override
  String get descricao;
  @override
  String? get tipo;
  @override
  String? get recurso;
  @override
  int? get tenant;
  @override
  GrupoDeRecursoModel? get grupoDeRecurso;
  @override
  double? get custoHora;
  @override
  @JsonKey(ignore: true)
  _$$_RecursoModelCopyWith<_$_RecursoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
