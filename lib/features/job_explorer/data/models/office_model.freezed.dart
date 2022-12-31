// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'office_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfficeModel _$OfficeModelFromJson(Map<String, dynamic> json) {
  return _OfficeModel.fromJson(json);
}

/// @nodoc
mixin _$OfficeModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_ids')
  List<dynamic>? get childIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  dynamic get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficeModelCopyWith<OfficeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficeModelCopyWith<$Res> {
  factory $OfficeModelCopyWith(
          OfficeModel value, $Res Function(OfficeModel) then) =
      _$OfficeModelCopyWithImpl<$Res, OfficeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'child_ids') List<dynamic>? childIds,
      @JsonKey(name: 'parent_id') dynamic parentId});
}

/// @nodoc
class _$OfficeModelCopyWithImpl<$Res, $Val extends OfficeModel>
    implements $OfficeModelCopyWith<$Res> {
  _$OfficeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? location = freezed,
    Object? childIds = freezed,
    Object? parentId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      childIds: freezed == childIds
          ? _value.childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficeModelCopyWith<$Res>
    implements $OfficeModelCopyWith<$Res> {
  factory _$$_OfficeModelCopyWith(
          _$_OfficeModel value, $Res Function(_$_OfficeModel) then) =
      __$$_OfficeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'child_ids') List<dynamic>? childIds,
      @JsonKey(name: 'parent_id') dynamic parentId});
}

/// @nodoc
class __$$_OfficeModelCopyWithImpl<$Res>
    extends _$OfficeModelCopyWithImpl<$Res, _$_OfficeModel>
    implements _$$_OfficeModelCopyWith<$Res> {
  __$$_OfficeModelCopyWithImpl(
      _$_OfficeModel _value, $Res Function(_$_OfficeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? location = freezed,
    Object? childIds = freezed,
    Object? parentId = null,
  }) {
    return _then(_$_OfficeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      childIds: freezed == childIds
          ? _value._childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfficeModel implements _OfficeModel {
  const _$_OfficeModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'child_ids') required final List<dynamic>? childIds,
      @JsonKey(name: 'parent_id') required this.parentId})
      : _childIds = childIds;

  factory _$_OfficeModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfficeModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'location')
  final String? location;
  final List<dynamic>? _childIds;
  @override
  @JsonKey(name: 'child_ids')
  List<dynamic>? get childIds {
    final value = _childIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'parent_id')
  final dynamic parentId;

  @override
  String toString() {
    return 'OfficeModel(id: $id, name: $name, location: $location, childIds: $childIds, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfficeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._childIds, _childIds) &&
            const DeepCollectionEquality().equals(other.parentId, parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      location,
      const DeepCollectionEquality().hash(_childIds),
      const DeepCollectionEquality().hash(parentId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficeModelCopyWith<_$_OfficeModel> get copyWith =>
      __$$_OfficeModelCopyWithImpl<_$_OfficeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficeModelToJson(
      this,
    );
  }
}

abstract class _OfficeModel implements OfficeModel {
  const factory _OfficeModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'location') required final String? location,
          @JsonKey(name: 'child_ids') required final List<dynamic>? childIds,
          @JsonKey(name: 'parent_id') required final dynamic parentId}) =
      _$_OfficeModel;

  factory _OfficeModel.fromJson(Map<String, dynamic> json) =
      _$_OfficeModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'child_ids')
  List<dynamic>? get childIds;
  @override
  @JsonKey(name: 'parent_id')
  dynamic get parentId;
  @override
  @JsonKey(ignore: true)
  _$$_OfficeModelCopyWith<_$_OfficeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
