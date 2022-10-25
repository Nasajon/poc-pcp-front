// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tipo_de_recurso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipoDeRecurso {
  String get descricao => throw _privateConstructorUsedError;
  String get valor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipoDeRecursoCopyWith<TipoDeRecurso> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoDeRecursoCopyWith<$Res> {
  factory $TipoDeRecursoCopyWith(
          TipoDeRecurso value, $Res Function(TipoDeRecurso) then) =
      _$TipoDeRecursoCopyWithImpl<$Res, TipoDeRecurso>;
  @useResult
  $Res call({String descricao, String valor});
}

/// @nodoc
class _$TipoDeRecursoCopyWithImpl<$Res, $Val extends TipoDeRecurso>
    implements $TipoDeRecursoCopyWith<$Res> {
  _$TipoDeRecursoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descricao = null,
    Object? valor = null,
  }) {
    return _then(_value.copyWith(
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TipoDeRecursoCopyWith<$Res>
    implements $TipoDeRecursoCopyWith<$Res> {
  factory _$$_TipoDeRecursoCopyWith(
          _$_TipoDeRecurso value, $Res Function(_$_TipoDeRecurso) then) =
      __$$_TipoDeRecursoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String descricao, String valor});
}

/// @nodoc
class __$$_TipoDeRecursoCopyWithImpl<$Res>
    extends _$TipoDeRecursoCopyWithImpl<$Res, _$_TipoDeRecurso>
    implements _$$_TipoDeRecursoCopyWith<$Res> {
  __$$_TipoDeRecursoCopyWithImpl(
      _$_TipoDeRecurso _value, $Res Function(_$_TipoDeRecurso) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descricao = null,
    Object? valor = null,
  }) {
    return _then(_$_TipoDeRecurso(
      descricao: null == descricao
          ? _value.descricao
          : descricao // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TipoDeRecurso implements _TipoDeRecurso {
  const _$_TipoDeRecurso({required this.descricao, required this.valor});

  @override
  final String descricao;
  @override
  final String valor;

  @override
  String toString() {
    return 'TipoDeRecurso(descricao: $descricao, valor: $valor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipoDeRecurso &&
            (identical(other.descricao, descricao) ||
                other.descricao == descricao) &&
            (identical(other.valor, valor) || other.valor == valor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descricao, valor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TipoDeRecursoCopyWith<_$_TipoDeRecurso> get copyWith =>
      __$$_TipoDeRecursoCopyWithImpl<_$_TipoDeRecurso>(this, _$identity);
}

abstract class _TipoDeRecurso implements TipoDeRecurso {
  const factory _TipoDeRecurso(
      {required final String descricao,
      required final String valor}) = _$_TipoDeRecurso;

  @override
  String get descricao;
  @override
  String get valor;
  @override
  @JsonKey(ignore: true)
  _$$_TipoDeRecursoCopyWith<_$_TipoDeRecurso> get copyWith =>
      throw _privateConstructorUsedError;
}
