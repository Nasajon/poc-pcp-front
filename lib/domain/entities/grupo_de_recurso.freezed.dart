// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grupo_de_recurso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GrupoDeRecurso {
  String? get id => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  String get descricao => throw _privateConstructorUsedError;
  TipoDeRecurso get tipo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GrupoDeRecursoCopyWith<GrupoDeRecurso> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupoDeRecursoCopyWith<$Res> {
  factory $GrupoDeRecursoCopyWith(
          GrupoDeRecurso value, $Res Function(GrupoDeRecurso) then) =
      _$GrupoDeRecursoCopyWithImpl<$Res, GrupoDeRecurso>;
  @useResult
  $Res call({String? id, String codigo, String descricao, TipoDeRecurso tipo});

  $TipoDeRecursoCopyWith<$Res> get tipo;
}

/// @nodoc
class _$GrupoDeRecursoCopyWithImpl<$Res, $Val extends GrupoDeRecurso>
    implements $GrupoDeRecursoCopyWith<$Res> {
  _$GrupoDeRecursoCopyWithImpl(this._value, this._then);

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
    Object? tipo = null,
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
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDeRecurso,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TipoDeRecursoCopyWith<$Res> get tipo {
    return $TipoDeRecursoCopyWith<$Res>(_value.tipo, (value) {
      return _then(_value.copyWith(tipo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GrupoDeRecursoCopyWith<$Res>
    implements $GrupoDeRecursoCopyWith<$Res> {
  factory _$$_GrupoDeRecursoCopyWith(
          _$_GrupoDeRecurso value, $Res Function(_$_GrupoDeRecurso) then) =
      __$$_GrupoDeRecursoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String codigo, String descricao, TipoDeRecurso tipo});

  @override
  $TipoDeRecursoCopyWith<$Res> get tipo;
}

/// @nodoc
class __$$_GrupoDeRecursoCopyWithImpl<$Res>
    extends _$GrupoDeRecursoCopyWithImpl<$Res, _$_GrupoDeRecurso>
    implements _$$_GrupoDeRecursoCopyWith<$Res> {
  __$$_GrupoDeRecursoCopyWithImpl(
      _$_GrupoDeRecurso _value, $Res Function(_$_GrupoDeRecurso) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? codigo = null,
    Object? descricao = null,
    Object? tipo = null,
  }) {
    return _then(_$_GrupoDeRecurso(
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
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDeRecurso,
    ));
  }
}

/// @nodoc

class _$_GrupoDeRecurso implements _GrupoDeRecurso {
  const _$_GrupoDeRecurso(
      {this.id,
      required this.codigo,
      required this.descricao,
      required this.tipo});

  @override
  final String? id;
  @override
  final String codigo;
  @override
  final String descricao;
  @override
  final TipoDeRecurso tipo;

  @override
  String toString() {
    return 'GrupoDeRecurso(id: $id, codigo: $codigo, descricao: $descricao, tipo: $tipo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrupoDeRecurso &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.tipo, tipo) || other.tipo == tipo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, codigo, descricao, tipo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrupoDeRecursoCopyWith<_$_GrupoDeRecurso> get copyWith =>
      __$$_GrupoDeRecursoCopyWithImpl<_$_GrupoDeRecurso>(this, _$identity);
}

abstract class _GrupoDeRecurso implements GrupoDeRecurso {
  const factory _GrupoDeRecurso(
      {final String? id,
      required final String codigo,
      required final String descricao,
      required final TipoDeRecurso tipo}) = _$_GrupoDeRecurso;

  @override
  String? get id;
  @override
  String get codigo;
  @override
  String get descricao;
  @override
  TipoDeRecurso get tipo;
  @override
  @JsonKey(ignore: true)
  _$$_GrupoDeRecursoCopyWith<_$_GrupoDeRecurso> get copyWith =>
      throw _privateConstructorUsedError;
}
