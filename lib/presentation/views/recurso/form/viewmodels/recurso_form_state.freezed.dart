// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recurso_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecursoFormState {
  bool get loading => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  Recurso? get recurso => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecursoFormStateCopyWith<RecursoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursoFormStateCopyWith<$Res> {
  factory $RecursoFormStateCopyWith(
          RecursoFormState value, $Res Function(RecursoFormState) then) =
      _$RecursoFormStateCopyWithImpl<$Res, RecursoFormState>;
  @useResult
  $Res call({bool loading, String? id, Recurso? recurso});

  $RecursoCopyWith<$Res>? get recurso;
}

/// @nodoc
class _$RecursoFormStateCopyWithImpl<$Res, $Val extends RecursoFormState>
    implements $RecursoFormStateCopyWith<$Res> {
  _$RecursoFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? id = freezed,
    Object? recurso = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recurso: freezed == recurso
          ? _value.recurso
          : recurso // ignore: cast_nullable_to_non_nullable
              as Recurso?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecursoCopyWith<$Res>? get recurso {
    if (_value.recurso == null) {
      return null;
    }

    return $RecursoCopyWith<$Res>(_value.recurso!, (value) {
      return _then(_value.copyWith(recurso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecursoFormStateCopyWith<$Res>
    implements $RecursoFormStateCopyWith<$Res> {
  factory _$$_RecursoFormStateCopyWith(
          _$_RecursoFormState value, $Res Function(_$_RecursoFormState) then) =
      __$$_RecursoFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String? id, Recurso? recurso});

  @override
  $RecursoCopyWith<$Res>? get recurso;
}

/// @nodoc
class __$$_RecursoFormStateCopyWithImpl<$Res>
    extends _$RecursoFormStateCopyWithImpl<$Res, _$_RecursoFormState>
    implements _$$_RecursoFormStateCopyWith<$Res> {
  __$$_RecursoFormStateCopyWithImpl(
      _$_RecursoFormState _value, $Res Function(_$_RecursoFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? id = freezed,
    Object? recurso = freezed,
  }) {
    return _then(_$_RecursoFormState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      recurso: freezed == recurso
          ? _value.recurso
          : recurso // ignore: cast_nullable_to_non_nullable
              as Recurso?,
    ));
  }
}

/// @nodoc

class _$_RecursoFormState extends _RecursoFormState {
  const _$_RecursoFormState({this.loading = false, this.id, this.recurso})
      : super._();

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? id;
  @override
  final Recurso? recurso;

  @override
  String toString() {
    return 'RecursoFormState(loading: $loading, id: $id, recurso: $recurso)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecursoFormState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recurso, recurso) || other.recurso == recurso));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, id, recurso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecursoFormStateCopyWith<_$_RecursoFormState> get copyWith =>
      __$$_RecursoFormStateCopyWithImpl<_$_RecursoFormState>(this, _$identity);
}

abstract class _RecursoFormState extends RecursoFormState {
  const factory _RecursoFormState(
      {final bool loading,
      final String? id,
      final Recurso? recurso}) = _$_RecursoFormState;
  const _RecursoFormState._() : super._();

  @override
  bool get loading;
  @override
  String? get id;
  @override
  Recurso? get recurso;
  @override
  @JsonKey(ignore: true)
  _$$_RecursoFormStateCopyWith<_$_RecursoFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
