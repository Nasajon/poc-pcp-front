// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grupo_de_recurso_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GrupoDeRecursoListState {
  bool get loading => throw _privateConstructorUsedError;
  List<GrupoDeRecurso>? get gruposDeRecursos =>
      throw _privateConstructorUsedError;
  List<GrupoDeRecurso>? get recentGruposDeRecursos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GrupoDeRecursoListStateCopyWith<GrupoDeRecursoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupoDeRecursoListStateCopyWith<$Res> {
  factory $GrupoDeRecursoListStateCopyWith(GrupoDeRecursoListState value,
          $Res Function(GrupoDeRecursoListState) then) =
      _$GrupoDeRecursoListStateCopyWithImpl<$Res, GrupoDeRecursoListState>;
  @useResult
  $Res call(
      {bool loading,
      List<GrupoDeRecurso>? gruposDeRecursos,
      List<GrupoDeRecurso>? recentGruposDeRecursos});
}

/// @nodoc
class _$GrupoDeRecursoListStateCopyWithImpl<$Res,
        $Val extends GrupoDeRecursoListState>
    implements $GrupoDeRecursoListStateCopyWith<$Res> {
  _$GrupoDeRecursoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? gruposDeRecursos = freezed,
    Object? recentGruposDeRecursos = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      gruposDeRecursos: freezed == gruposDeRecursos
          ? _value.gruposDeRecursos
          : gruposDeRecursos // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecurso>?,
      recentGruposDeRecursos: freezed == recentGruposDeRecursos
          ? _value.recentGruposDeRecursos
          : recentGruposDeRecursos // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecurso>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrupoDeRecursoListStateCopyWith<$Res>
    implements $GrupoDeRecursoListStateCopyWith<$Res> {
  factory _$$_GrupoDeRecursoListStateCopyWith(_$_GrupoDeRecursoListState value,
          $Res Function(_$_GrupoDeRecursoListState) then) =
      __$$_GrupoDeRecursoListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<GrupoDeRecurso>? gruposDeRecursos,
      List<GrupoDeRecurso>? recentGruposDeRecursos});
}

/// @nodoc
class __$$_GrupoDeRecursoListStateCopyWithImpl<$Res>
    extends _$GrupoDeRecursoListStateCopyWithImpl<$Res,
        _$_GrupoDeRecursoListState>
    implements _$$_GrupoDeRecursoListStateCopyWith<$Res> {
  __$$_GrupoDeRecursoListStateCopyWithImpl(_$_GrupoDeRecursoListState _value,
      $Res Function(_$_GrupoDeRecursoListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? gruposDeRecursos = freezed,
    Object? recentGruposDeRecursos = freezed,
  }) {
    return _then(_$_GrupoDeRecursoListState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      gruposDeRecursos: freezed == gruposDeRecursos
          ? _value._gruposDeRecursos
          : gruposDeRecursos // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecurso>?,
      recentGruposDeRecursos: freezed == recentGruposDeRecursos
          ? _value._recentGruposDeRecursos
          : recentGruposDeRecursos // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecurso>?,
    ));
  }
}

/// @nodoc

class _$_GrupoDeRecursoListState extends _GrupoDeRecursoListState {
  const _$_GrupoDeRecursoListState(
      {this.loading = false,
      final List<GrupoDeRecurso>? gruposDeRecursos,
      final List<GrupoDeRecurso>? recentGruposDeRecursos})
      : _gruposDeRecursos = gruposDeRecursos,
        _recentGruposDeRecursos = recentGruposDeRecursos,
        super._();

  @override
  @JsonKey()
  final bool loading;
  final List<GrupoDeRecurso>? _gruposDeRecursos;
  @override
  List<GrupoDeRecurso>? get gruposDeRecursos {
    final value = _gruposDeRecursos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GrupoDeRecurso>? _recentGruposDeRecursos;
  @override
  List<GrupoDeRecurso>? get recentGruposDeRecursos {
    final value = _recentGruposDeRecursos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GrupoDeRecursoListState(loading: $loading, gruposDeRecursos: $gruposDeRecursos, recentGruposDeRecursos: $recentGruposDeRecursos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrupoDeRecursoListState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._gruposDeRecursos, _gruposDeRecursos) &&
            const DeepCollectionEquality().equals(
                other._recentGruposDeRecursos, _recentGruposDeRecursos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_gruposDeRecursos),
      const DeepCollectionEquality().hash(_recentGruposDeRecursos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrupoDeRecursoListStateCopyWith<_$_GrupoDeRecursoListState>
      get copyWith =>
          __$$_GrupoDeRecursoListStateCopyWithImpl<_$_GrupoDeRecursoListState>(
              this, _$identity);
}

abstract class _GrupoDeRecursoListState extends GrupoDeRecursoListState {
  const factory _GrupoDeRecursoListState(
          {final bool loading,
          final List<GrupoDeRecurso>? gruposDeRecursos,
          final List<GrupoDeRecurso>? recentGruposDeRecursos}) =
      _$_GrupoDeRecursoListState;
  const _GrupoDeRecursoListState._() : super._();

  @override
  bool get loading;
  @override
  List<GrupoDeRecurso>? get gruposDeRecursos;
  @override
  List<GrupoDeRecurso>? get recentGruposDeRecursos;
  @override
  @JsonKey(ignore: true)
  _$$_GrupoDeRecursoListStateCopyWith<_$_GrupoDeRecursoListState>
      get copyWith => throw _privateConstructorUsedError;
}
