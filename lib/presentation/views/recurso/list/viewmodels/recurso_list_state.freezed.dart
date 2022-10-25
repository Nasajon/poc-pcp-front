// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recurso_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecursoListState {
  bool get loading => throw _privateConstructorUsedError;
  List<Recurso>? get recursos => throw _privateConstructorUsedError;
  List<Recurso>? get recentRecursos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecursoListStateCopyWith<RecursoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursoListStateCopyWith<$Res> {
  factory $RecursoListStateCopyWith(
          RecursoListState value, $Res Function(RecursoListState) then) =
      _$RecursoListStateCopyWithImpl<$Res, RecursoListState>;
  @useResult
  $Res call(
      {bool loading, List<Recurso>? recursos, List<Recurso>? recentRecursos});
}

/// @nodoc
class _$RecursoListStateCopyWithImpl<$Res, $Val extends RecursoListState>
    implements $RecursoListStateCopyWith<$Res> {
  _$RecursoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? recursos = freezed,
    Object? recentRecursos = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      recursos: freezed == recursos
          ? _value.recursos
          : recursos // ignore: cast_nullable_to_non_nullable
              as List<Recurso>?,
      recentRecursos: freezed == recentRecursos
          ? _value.recentRecursos
          : recentRecursos // ignore: cast_nullable_to_non_nullable
              as List<Recurso>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecursoListStateCopyWith<$Res>
    implements $RecursoListStateCopyWith<$Res> {
  factory _$$_RecursoListStateCopyWith(
          _$_RecursoListState value, $Res Function(_$_RecursoListState) then) =
      __$$_RecursoListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, List<Recurso>? recursos, List<Recurso>? recentRecursos});
}

/// @nodoc
class __$$_RecursoListStateCopyWithImpl<$Res>
    extends _$RecursoListStateCopyWithImpl<$Res, _$_RecursoListState>
    implements _$$_RecursoListStateCopyWith<$Res> {
  __$$_RecursoListStateCopyWithImpl(
      _$_RecursoListState _value, $Res Function(_$_RecursoListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? recursos = freezed,
    Object? recentRecursos = freezed,
  }) {
    return _then(_$_RecursoListState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      recursos: freezed == recursos
          ? _value._recursos
          : recursos // ignore: cast_nullable_to_non_nullable
              as List<Recurso>?,
      recentRecursos: freezed == recentRecursos
          ? _value._recentRecursos
          : recentRecursos // ignore: cast_nullable_to_non_nullable
              as List<Recurso>?,
    ));
  }
}

/// @nodoc

class _$_RecursoListState extends _RecursoListState {
  const _$_RecursoListState(
      {this.loading = false,
      final List<Recurso>? recursos,
      final List<Recurso>? recentRecursos})
      : _recursos = recursos,
        _recentRecursos = recentRecursos,
        super._();

  @override
  @JsonKey()
  final bool loading;
  final List<Recurso>? _recursos;
  @override
  List<Recurso>? get recursos {
    final value = _recursos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Recurso>? _recentRecursos;
  @override
  List<Recurso>? get recentRecursos {
    final value = _recentRecursos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecursoListState(loading: $loading, recursos: $recursos, recentRecursos: $recentRecursos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecursoListState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._recursos, _recursos) &&
            const DeepCollectionEquality()
                .equals(other._recentRecursos, _recentRecursos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_recursos),
      const DeepCollectionEquality().hash(_recentRecursos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecursoListStateCopyWith<_$_RecursoListState> get copyWith =>
      __$$_RecursoListStateCopyWithImpl<_$_RecursoListState>(this, _$identity);
}

abstract class _RecursoListState extends RecursoListState {
  const factory _RecursoListState(
      {final bool loading,
      final List<Recurso>? recursos,
      final List<Recurso>? recentRecursos}) = _$_RecursoListState;
  const _RecursoListState._() : super._();

  @override
  bool get loading;
  @override
  List<Recurso>? get recursos;
  @override
  List<Recurso>? get recentRecursos;
  @override
  @JsonKey(ignore: true)
  _$$_RecursoListStateCopyWith<_$_RecursoListState> get copyWith =>
      throw _privateConstructorUsedError;
}
