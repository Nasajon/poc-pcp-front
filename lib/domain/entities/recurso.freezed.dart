// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recurso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Recurso {
  String? get id => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  TipoDeRecurso? get tipo => throw _privateConstructorUsedError;
  GrupoDeRecurso? get grupoDeRecurso => throw _privateConstructorUsedError;
  double? get custoHora => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecursoCopyWith<Recurso> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursoCopyWith<$Res> {
  factory $RecursoCopyWith(Recurso value, $Res Function(Recurso) then) =
      _$RecursoCopyWithImpl<$Res, Recurso>;
  @useResult
  $Res call(
      {String? id,
      String codigo,
      String descricao,
      TipoDeRecurso? tipo,
      GrupoDeRecurso? grupoDeRecurso,
      double? custoHora});

  $TipoDeRecursoCopyWith<$Res>? get tipo;
  $GrupoDeRecursoCopyWith<$Res>? get grupoDeRecurso;
}

/// @nodoc
class _$RecursoCopyWithImpl<$Res, $Val extends Recurso>
    implements $RecursoCopyWith<$Res> {
  _$RecursoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = freezed,
    Object? grupoDeRecurso = freezed,
    Object? custoHora = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as TipoDeRecurso?,
      grupoDeRecurso: freezed == grupoDeRecurso
          ? _value.grupoDeRecurso
          : grupoDeRecurso // ignore: cast_nullable_to_non_nullable
              as GrupoDeRecurso?,
      custoHora: freezed == custoHora
          ? _value.custoHora
          : custoHora // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TipoDeRecursoCopyWith<$Res>? get tipo {
    if (_value.tipo == null) {
      return null;
    }

    return $TipoDeRecursoCopyWith<$Res>(_value.tipo!, (value) {
      return _then(_value.copyWith(tipo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GrupoDeRecursoCopyWith<$Res>? get grupoDeRecurso {
    if (_value.grupoDeRecurso == null) {
      return null;
    }

    return $GrupoDeRecursoCopyWith<$Res>(_value.grupoDeRecurso!, (value) {
      return _then(_value.copyWith(grupoDeRecurso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecursoCopyWith<$Res> implements $RecursoCopyWith<$Res> {
  factory _$$_RecursoCopyWith(
          _$_Recurso value, $Res Function(_$_Recurso) then) =
      __$$_RecursoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String codigo,
      String descricao,
      TipoDeRecurso? tipo,
      GrupoDeRecurso? grupoDeRecurso,
      double? custoHora});

  @override
  $TipoDeRecursoCopyWith<$Res>? get tipo;
  @override
  $GrupoDeRecursoCopyWith<$Res>? get grupoDeRecurso;
}

/// @nodoc
class __$$_RecursoCopyWithImpl<$Res>
    extends _$RecursoCopyWithImpl<$Res, _$_Recurso>
    implements _$$_RecursoCopyWith<$Res> {
  __$$_RecursoCopyWithImpl(_$_Recurso _value, $Res Function(_$_Recurso) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = freezed,
    Object? grupoDeRecurso = freezed,
    Object? custoHora = freezed,
  }) {
    return _then(_$_Recurso(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as TipoDeRecurso?,
      grupoDeRecurso: freezed == grupoDeRecurso
          ? _value.grupoDeRecurso
          : grupoDeRecurso // ignore: cast_nullable_to_non_nullable
              as GrupoDeRecurso?,
      custoHora: freezed == custoHora
          ? _value.custoHora
          : custoHora // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Recurso implements _Recurso {
  const _$_Recurso(
      {this.id,
      required this.codigo,
      required this.descricao,
      this.tipo,
      this.grupoDeRecurso,
      this.custoHora});

  @override
  final String? id;
  @override
  final String codigo;
  @override
  final String descricao;
  @override
  final TipoDeRecurso? tipo;
  @override
  final GrupoDeRecurso? grupoDeRecurso;
  @override
  final double? custoHora;

  @override
  String toString() {
    return 'Recurso(id: $id, codigo: $codigo, descricao: $descricao, tipo: $tipo, grupoDeRecurso: $grupoDeRecurso, custoHora: $custoHora)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recurso &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.grupoDeRecurso, grupoDeRecurso) ||
                other.grupoDeRecurso == grupoDeRecurso) &&
            (identical(other.custoHora, custoHora) ||
                other.custoHora == custoHora));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, codigo, descricao, tipo, grupoDeRecurso, custoHora);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecursoCopyWith<_$_Recurso> get copyWith =>
      __$$_RecursoCopyWithImpl<_$_Recurso>(this, _$identity);
}

abstract class _Recurso implements Recurso {
  const factory _Recurso(
      {final String? id,
      required final String codigo,
      required final String descricao,
      final TipoDeRecurso? tipo,
      final GrupoDeRecurso? grupoDeRecurso,
      final double? custoHora}) = _$_Recurso;

  @override
  String? get id;
  @override
  String get codigo;
  @override
  String get descricao;
  @override
  TipoDeRecurso? get tipo;
  @override
  GrupoDeRecurso? get grupoDeRecurso;
  @override
  double? get custoHora;
  @override
  @JsonKey(ignore: true)
  _$$_RecursoCopyWith<_$_Recurso> get copyWith =>
      throw _privateConstructorUsedError;
}
