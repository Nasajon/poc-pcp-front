// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grupo_de_recurso_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrupoDeRecursoModel _$GrupoDeRecursoModelFromJson(Map<String, dynamic> json) {
  return _GrupoDeRecursoModel.fromJson(json);
}

/// @nodoc
mixin _$GrupoDeRecursoModel {
  String get codigo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  String? get grupoderecurso => throw _privateConstructorUsedError;
  int? get tenant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrupoDeRecursoModelCopyWith<GrupoDeRecursoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupoDeRecursoModelCopyWith<$Res> {
  factory $GrupoDeRecursoModelCopyWith(
          GrupoDeRecursoModel value, $Res Function(GrupoDeRecursoModel) then) =
      _$GrupoDeRecursoModelCopyWithImpl<$Res, GrupoDeRecursoModel>;
  @useResult
  $Res call(
      {String codigo,
      String descricao,
      String tipo,
      String? grupoderecurso,
      int? tenant});
}

/// @nodoc
class _$GrupoDeRecursoModelCopyWithImpl<$Res, $Val extends GrupoDeRecursoModel>
    implements $GrupoDeRecursoModelCopyWith<$Res> {
  _$GrupoDeRecursoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = null,
    Object? grupoderecurso = freezed,
    Object? tenant = freezed,
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
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      grupoderecurso: freezed == grupoderecurso
          ? _value.grupoderecurso
          : grupoderecurso // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrupoDeRecursoModelCopyWith<$Res>
    implements $GrupoDeRecursoModelCopyWith<$Res> {
  factory _$$_GrupoDeRecursoModelCopyWith(_$_GrupoDeRecursoModel value,
          $Res Function(_$_GrupoDeRecursoModel) then) =
      __$$_GrupoDeRecursoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigo,
      String descricao,
      String tipo,
      String? grupoderecurso,
      int? tenant});
}

/// @nodoc
class __$$_GrupoDeRecursoModelCopyWithImpl<$Res>
    extends _$GrupoDeRecursoModelCopyWithImpl<$Res, _$_GrupoDeRecursoModel>
    implements _$$_GrupoDeRecursoModelCopyWith<$Res> {
  __$$_GrupoDeRecursoModelCopyWithImpl(_$_GrupoDeRecursoModel _value,
      $Res Function(_$_GrupoDeRecursoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = null,
    Object? grupoderecurso = freezed,
    Object? tenant = freezed,
  }) {
    return _then(_$_GrupoDeRecursoModel(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      grupoderecurso: freezed == grupoderecurso
          ? _value.grupoderecurso
          : grupoderecurso // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrupoDeRecursoModel extends _GrupoDeRecursoModel {
  const _$_GrupoDeRecursoModel(
      {required this.codigo,
      required this.descricao,
      required this.tipo,
      this.grupoderecurso,
      this.tenant})
      : super._();

  factory _$_GrupoDeRecursoModel.fromJson(Map<String, dynamic> json) =>
      _$$_GrupoDeRecursoModelFromJson(json);

  @override
  final String codigo;
  @override
  final String descricao;
  @override
  final String tipo;
  @override
  final String? grupoderecurso;
  @override
  final int? tenant;

  @override
  String toString() {
    return 'GrupoDeRecursoModel(codigo: $codigo, descricao: $descricao, tipo: $tipo, grupoderecurso: $grupoderecurso, tenant: $tenant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrupoDeRecursoModel &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.grupoderecurso, grupoderecurso) ||
                other.grupoderecurso == grupoderecurso) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codigo, descricao, tipo, grupoderecurso, tenant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrupoDeRecursoModelCopyWith<_$_GrupoDeRecursoModel> get copyWith =>
      __$$_GrupoDeRecursoModelCopyWithImpl<_$_GrupoDeRecursoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrupoDeRecursoModelToJson(
      this,
    );
  }
}

abstract class _GrupoDeRecursoModel extends GrupoDeRecursoModel {
  const factory _GrupoDeRecursoModel(
      {required final String codigo,
      required final String descricao,
      required final String tipo,
      final String? grupoderecurso,
      final int? tenant}) = _$_GrupoDeRecursoModel;
  const _GrupoDeRecursoModel._() : super._();

  factory _GrupoDeRecursoModel.fromJson(Map<String, dynamic> json) =
      _$_GrupoDeRecursoModel.fromJson;

  @override
  String get codigo;
  @override
  String get descricao;
  @override
  String get tipo;
  @override
  String? get grupoderecurso;
  @override
  int? get tenant;
  @override
  @JsonKey(ignore: true)
  _$$_GrupoDeRecursoModelCopyWith<_$_GrupoDeRecursoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
