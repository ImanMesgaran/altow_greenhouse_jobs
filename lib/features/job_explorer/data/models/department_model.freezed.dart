// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) {
  return _DepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_ids')
  List<dynamic> get childIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  dynamic get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
          DepartmentModel value, $Res Function(DepartmentModel) then) =
      _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'child_ids') List<dynamic> childIds,
      @JsonKey(name: 'parent_id') dynamic parentId});
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? childIds = null,
    Object? parentId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      childIds: null == childIds
          ? _value.childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentModelCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$_DepartmentModelCopyWith(
          _$_DepartmentModel value, $Res Function(_$_DepartmentModel) then) =
      __$$_DepartmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'child_ids') List<dynamic> childIds,
      @JsonKey(name: 'parent_id') dynamic parentId});
}

/// @nodoc
class __$$_DepartmentModelCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$_DepartmentModel>
    implements _$$_DepartmentModelCopyWith<$Res> {
  __$$_DepartmentModelCopyWithImpl(
      _$_DepartmentModel _value, $Res Function(_$_DepartmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? childIds = null,
    Object? parentId = null,
  }) {
    return _then(_$_DepartmentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      childIds: null == childIds
          ? _value._childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentModel implements _DepartmentModel {
  const _$_DepartmentModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'child_ids') required final List<dynamic> childIds,
      @JsonKey(name: 'parent_id') required this.parentId})
      : _childIds = childIds;

  factory _$_DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<dynamic> _childIds;
  @override
  @JsonKey(name: 'child_ids')
  List<dynamic> get childIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childIds);
  }

  @override
  @JsonKey(name: 'parent_id')
  final dynamic parentId;

  @override
  String toString() {
    return 'DepartmentModel(id: $id, name: $name, childIds: $childIds, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._childIds, _childIds) &&
            const DeepCollectionEquality().equals(other.parentId, parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_childIds),
      const DeepCollectionEquality().hash(parentId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      __$$_DepartmentModelCopyWithImpl<_$_DepartmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentModelToJson(
      this,
    );
  }
}

abstract class _DepartmentModel implements DepartmentModel {
  const factory _DepartmentModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'child_ids') required final List<dynamic> childIds,
          @JsonKey(name: 'parent_id') required final dynamic parentId}) =
      _$_DepartmentModel;

  factory _DepartmentModel.fromJson(Map<String, dynamic> json) =
      _$_DepartmentModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'child_ids')
  List<dynamic> get childIds;
  @override
  @JsonKey(name: 'parent_id')
  dynamic get parentId;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
