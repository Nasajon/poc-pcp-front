// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recurso_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecursoListModel _$RecursoListModelFromJson(Map<String, dynamic> json) {
  return _RecursoListModel.fromJson(json);
}

/// @nodoc
mixin _$RecursoListModel {
  List<RecursoModel> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecursoListModelCopyWith<RecursoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursoListModelCopyWith<$Res> {
  factory $RecursoListModelCopyWith(
          RecursoListModel value, $Res Function(RecursoListModel) then) =
      _$RecursoListModelCopyWithImpl<$Res, RecursoListModel>;
  @useResult
  $Res call({List<RecursoModel> result});
}

/// @nodoc
class _$RecursoListModelCopyWithImpl<$Res, $Val extends RecursoListModel>
    implements $RecursoListModelCopyWith<$Res> {
  _$RecursoListModelCopyWithImpl(this._value, this._then);

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
              as List<RecursoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecursoListModelCopyWith<$Res>
    implements $RecursoListModelCopyWith<$Res> {
  factory _$$_RecursoListModelCopyWith(
          _$_RecursoListModel value, $Res Function(_$_RecursoListModel) then) =
      __$$_RecursoListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecursoModel> result});
}

/// @nodoc
class __$$_RecursoListModelCopyWithImpl<$Res>
    extends _$RecursoListModelCopyWithImpl<$Res, _$_RecursoListModel>
    implements _$$_RecursoListModelCopyWith<$Res> {
  __$$_RecursoListModelCopyWithImpl(
      _$_RecursoListModel _value, $Res Function(_$_RecursoListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_RecursoListModel(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<RecursoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecursoListModel extends _RecursoListModel {
  const _$_RecursoListModel({required final List<RecursoModel> result})
      : _result = result,
        super._();

  factory _$_RecursoListModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecursoListModelFromJson(json);

  final List<RecursoModel> _result;
  @override
  List<RecursoModel> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'RecursoListModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecursoListModel &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecursoListModelCopyWith<_$_RecursoListModel> get copyWith =>
      __$$_RecursoListModelCopyWithImpl<_$_RecursoListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecursoListModelToJson(
      this,
    );
  }
}

abstract class _RecursoListModel extends RecursoListModel {
  const factory _RecursoListModel({required final List<RecursoModel> result}) =
      _$_RecursoListModel;
  const _RecursoListModel._() : super._();

  factory _RecursoListModel.fromJson(Map<String, dynamic> json) =
      _$_RecursoListModel.fromJson;

  @override
  List<RecursoModel> get result;
  @override
  @JsonKey(ignore: true)
  _$$_RecursoListModelCopyWith<_$_RecursoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
