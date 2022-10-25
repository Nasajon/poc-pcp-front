// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grupo_de_recurso_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrupoDeRecursoListModel _$GrupoDeRecursoListModelFromJson(
    Map<String, dynamic> json) {
  return _GrupoDeRecursoListModel.fromJson(json);
}

/// @nodoc
mixin _$GrupoDeRecursoListModel {
  List<GrupoDeRecursoModel> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrupoDeRecursoListModelCopyWith<GrupoDeRecursoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrupoDeRecursoListModelCopyWith<$Res> {
  factory $GrupoDeRecursoListModelCopyWith(GrupoDeRecursoListModel value,
          $Res Function(GrupoDeRecursoListModel) then) =
      _$GrupoDeRecursoListModelCopyWithImpl<$Res, GrupoDeRecursoListModel>;
  @useResult
  $Res call({List<GrupoDeRecursoModel> result});
}

/// @nodoc
class _$GrupoDeRecursoListModelCopyWithImpl<$Res,
        $Val extends GrupoDeRecursoListModel>
    implements $GrupoDeRecursoListModelCopyWith<$Res> {
  _$GrupoDeRecursoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecursoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrupoDeRecursoListModelCopyWith<$Res>
    implements $GrupoDeRecursoListModelCopyWith<$Res> {
  factory _$$_GrupoDeRecursoListModelCopyWith(_$_GrupoDeRecursoListModel value,
          $Res Function(_$_GrupoDeRecursoListModel) then) =
      __$$_GrupoDeRecursoListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GrupoDeRecursoModel> result});
}

/// @nodoc
class __$$_GrupoDeRecursoListModelCopyWithImpl<$Res>
    extends _$GrupoDeRecursoListModelCopyWithImpl<$Res,
        _$_GrupoDeRecursoListModel>
    implements _$$_GrupoDeRecursoListModelCopyWith<$Res> {
  __$$_GrupoDeRecursoListModelCopyWithImpl(_$_GrupoDeRecursoListModel _value,
      $Res Function(_$_GrupoDeRecursoListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_GrupoDeRecursoListModel(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<GrupoDeRecursoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrupoDeRecursoListModel extends _GrupoDeRecursoListModel {
  const _$_GrupoDeRecursoListModel(
      {required final List<GrupoDeRecursoModel> result})
      : _result = result,
        super._();

  factory _$_GrupoDeRecursoListModel.fromJson(Map<String, dynamic> json) =>
      _$$_GrupoDeRecursoListModelFromJson(json);

  final List<GrupoDeRecursoModel> _result;
  @override
  List<GrupoDeRecursoModel> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'GrupoDeRecursoListModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrupoDeRecursoListModel &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrupoDeRecursoListModelCopyWith<_$_GrupoDeRecursoListModel>
      get copyWith =>
          __$$_GrupoDeRecursoListModelCopyWithImpl<_$_GrupoDeRecursoListModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrupoDeRecursoListModelToJson(
      this,
    );
  }
}

abstract class _GrupoDeRecursoListModel extends GrupoDeRecursoListModel {
  const factory _GrupoDeRecursoListModel(
          {required final List<GrupoDeRecursoModel> result}) =
      _$_GrupoDeRecursoListModel;
  const _GrupoDeRecursoListModel._() : super._();

  factory _GrupoDeRecursoListModel.fromJson(Map<String, dynamic> json) =
      _$_GrupoDeRecursoListModel.fromJson;

  @override
  List<GrupoDeRecursoModel> get result;
  @override
  @JsonKey(ignore: true)
  _$$_GrupoDeRecursoListModelCopyWith<_$_GrupoDeRecursoListModel>
      get copyWith => throw _privateConstructorUsedError;
}
