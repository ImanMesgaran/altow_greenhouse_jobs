// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  @JsonKey(name: 'absolute_url')
  String get absoluteUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_compliance')
  List<DataComplianceModel>? get dataCompliance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_job_id')
  int? get internalJobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationModel? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  List<MetaDataModel>? get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'requisition_id')
  String? get requisitionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'education')
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'departments')
  List<DepartmentModel>? get departments => throw _privateConstructorUsedError;
  @JsonKey(name: 'offices')
  List<OfficeModel>? get offices => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFavorite', defaultValue: false)
  bool get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVisible', defaultValue: true)
  bool get isVisible => throw _privateConstructorUsedError;
  @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
  RandomAsset? get randomAsset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'absolute_url')
          String absoluteUrl,
      @JsonKey(name: 'data_compliance')
          List<DataComplianceModel>? dataCompliance,
      @JsonKey(name: 'internal_job_id')
          int? internalJobId,
      @JsonKey(name: 'location')
          LocationModel? location,
      @JsonKey(name: 'metadata')
          List<MetaDataModel>? metaData,
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'requisition_id')
          String? requisitionId,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'education')
          String? education,
      @JsonKey(name: 'content')
          String? content,
      @JsonKey(name: 'departments')
          List<DepartmentModel>? departments,
      @JsonKey(name: 'offices')
          List<OfficeModel>? offices,
      @JsonKey(name: 'isFavorite', defaultValue: false)
          bool isFavorite,
      @JsonKey(name: 'isVisible', defaultValue: true)
          bool isVisible,
      @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
          RandomAsset? randomAsset});

  $LocationModelCopyWith<$Res>? get location;
  $RandomAssetCopyWith<$Res>? get randomAsset;
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absoluteUrl = null,
    Object? dataCompliance = freezed,
    Object? internalJobId = freezed,
    Object? location = freezed,
    Object? metaData = freezed,
    Object? id = null,
    Object? updatedAt = freezed,
    Object? requisitionId = freezed,
    Object? title = null,
    Object? education = freezed,
    Object? content = freezed,
    Object? departments = freezed,
    Object? offices = freezed,
    Object? isFavorite = null,
    Object? isVisible = null,
    Object? randomAsset = freezed,
  }) {
    return _then(_value.copyWith(
      absoluteUrl: null == absoluteUrl
          ? _value.absoluteUrl
          : absoluteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dataCompliance: freezed == dataCompliance
          ? _value.dataCompliance
          : dataCompliance // ignore: cast_nullable_to_non_nullable
              as List<DataComplianceModel>?,
      internalJobId: freezed == internalJobId
          ? _value.internalJobId
          : internalJobId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as List<MetaDataModel>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requisitionId: freezed == requisitionId
          ? _value.requisitionId
          : requisitionId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      departments: freezed == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>?,
      offices: freezed == offices
          ? _value.offices
          : offices // ignore: cast_nullable_to_non_nullable
              as List<OfficeModel>?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      randomAsset: freezed == randomAsset
          ? _value.randomAsset
          : randomAsset // ignore: cast_nullable_to_non_nullable
              as RandomAsset?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RandomAssetCopyWith<$Res>? get randomAsset {
    if (_value.randomAsset == null) {
      return null;
    }

    return $RandomAssetCopyWith<$Res>(_value.randomAsset!, (value) {
      return _then(_value.copyWith(randomAsset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobModelCopyWith<$Res> implements $JobModelCopyWith<$Res> {
  factory _$$_JobModelCopyWith(
          _$_JobModel value, $Res Function(_$_JobModel) then) =
      __$$_JobModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'absolute_url')
          String absoluteUrl,
      @JsonKey(name: 'data_compliance')
          List<DataComplianceModel>? dataCompliance,
      @JsonKey(name: 'internal_job_id')
          int? internalJobId,
      @JsonKey(name: 'location')
          LocationModel? location,
      @JsonKey(name: 'metadata')
          List<MetaDataModel>? metaData,
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(name: 'requisition_id')
          String? requisitionId,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'education')
          String? education,
      @JsonKey(name: 'content')
          String? content,
      @JsonKey(name: 'departments')
          List<DepartmentModel>? departments,
      @JsonKey(name: 'offices')
          List<OfficeModel>? offices,
      @JsonKey(name: 'isFavorite', defaultValue: false)
          bool isFavorite,
      @JsonKey(name: 'isVisible', defaultValue: true)
          bool isVisible,
      @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
          RandomAsset? randomAsset});

  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $RandomAssetCopyWith<$Res>? get randomAsset;
}

/// @nodoc
class __$$_JobModelCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$_JobModel>
    implements _$$_JobModelCopyWith<$Res> {
  __$$_JobModelCopyWithImpl(
      _$_JobModel _value, $Res Function(_$_JobModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absoluteUrl = null,
    Object? dataCompliance = freezed,
    Object? internalJobId = freezed,
    Object? location = freezed,
    Object? metaData = freezed,
    Object? id = null,
    Object? updatedAt = freezed,
    Object? requisitionId = freezed,
    Object? title = null,
    Object? education = freezed,
    Object? content = freezed,
    Object? departments = freezed,
    Object? offices = freezed,
    Object? isFavorite = null,
    Object? isVisible = null,
    Object? randomAsset = freezed,
  }) {
    return _then(_$_JobModel(
      absoluteUrl: null == absoluteUrl
          ? _value.absoluteUrl
          : absoluteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dataCompliance: freezed == dataCompliance
          ? _value._dataCompliance
          : dataCompliance // ignore: cast_nullable_to_non_nullable
              as List<DataComplianceModel>?,
      internalJobId: freezed == internalJobId
          ? _value.internalJobId
          : internalJobId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      metaData: freezed == metaData
          ? _value._metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as List<MetaDataModel>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requisitionId: freezed == requisitionId
          ? _value.requisitionId
          : requisitionId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      departments: freezed == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>?,
      offices: freezed == offices
          ? _value._offices
          : offices // ignore: cast_nullable_to_non_nullable
              as List<OfficeModel>?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      randomAsset: freezed == randomAsset
          ? _value.randomAsset
          : randomAsset // ignore: cast_nullable_to_non_nullable
              as RandomAsset?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobModel implements _JobModel {
  _$_JobModel(
      {@JsonKey(name: 'absolute_url')
          required this.absoluteUrl,
      @JsonKey(name: 'data_compliance')
          final List<DataComplianceModel>? dataCompliance,
      @JsonKey(name: 'internal_job_id')
          required this.internalJobId,
      @JsonKey(name: 'location')
          required this.location,
      @JsonKey(name: 'metadata')
          required final List<MetaDataModel>? metaData,
      @JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'updated_at')
          required this.updatedAt,
      @JsonKey(name: 'requisition_id')
          required this.requisitionId,
      @JsonKey(name: 'title')
          required this.title,
      @JsonKey(name: 'education')
          this.education,
      @JsonKey(name: 'content')
          this.content,
      @JsonKey(name: 'departments')
          final List<DepartmentModel>? departments,
      @JsonKey(name: 'offices')
          final List<OfficeModel>? offices,
      @JsonKey(name: 'isFavorite', defaultValue: false)
          required this.isFavorite,
      @JsonKey(name: 'isVisible', defaultValue: true)
          required this.isVisible,
      @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
          required this.randomAsset})
      : _dataCompliance = dataCompliance,
        _metaData = metaData,
        _departments = departments,
        _offices = offices;

  factory _$_JobModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobModelFromJson(json);

  @override
  @JsonKey(name: 'absolute_url')
  final String absoluteUrl;
  final List<DataComplianceModel>? _dataCompliance;
  @override
  @JsonKey(name: 'data_compliance')
  List<DataComplianceModel>? get dataCompliance {
    final value = _dataCompliance;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'internal_job_id')
  final int? internalJobId;
  @override
  @JsonKey(name: 'location')
  final LocationModel? location;
  final List<MetaDataModel>? _metaData;
  @override
  @JsonKey(name: 'metadata')
  List<MetaDataModel>? get metaData {
    final value = _metaData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'requisition_id')
  final String? requisitionId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'education')
  final String? education;
  @override
  @JsonKey(name: 'content')
  final String? content;
  final List<DepartmentModel>? _departments;
  @override
  @JsonKey(name: 'departments')
  List<DepartmentModel>? get departments {
    final value = _departments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OfficeModel>? _offices;
  @override
  @JsonKey(name: 'offices')
  List<OfficeModel>? get offices {
    final value = _offices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isFavorite', defaultValue: false)
  final bool isFavorite;
  @override
  @JsonKey(name: 'isVisible', defaultValue: true)
  final bool isVisible;
  @override
  @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
  final RandomAsset? randomAsset;

  @override
  String toString() {
    return 'JobModel(absoluteUrl: $absoluteUrl, dataCompliance: $dataCompliance, internalJobId: $internalJobId, location: $location, metaData: $metaData, id: $id, updatedAt: $updatedAt, requisitionId: $requisitionId, title: $title, education: $education, content: $content, departments: $departments, offices: $offices, isFavorite: $isFavorite, isVisible: $isVisible, randomAsset: $randomAsset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobModel &&
            (identical(other.absoluteUrl, absoluteUrl) ||
                other.absoluteUrl == absoluteUrl) &&
            const DeepCollectionEquality()
                .equals(other._dataCompliance, _dataCompliance) &&
            (identical(other.internalJobId, internalJobId) ||
                other.internalJobId == internalJobId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.requisitionId, requisitionId) ||
                other.requisitionId == requisitionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments) &&
            const DeepCollectionEquality().equals(other._offices, _offices) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.randomAsset, randomAsset) ||
                other.randomAsset == randomAsset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      absoluteUrl,
      const DeepCollectionEquality().hash(_dataCompliance),
      internalJobId,
      location,
      const DeepCollectionEquality().hash(_metaData),
      id,
      updatedAt,
      requisitionId,
      title,
      education,
      content,
      const DeepCollectionEquality().hash(_departments),
      const DeepCollectionEquality().hash(_offices),
      isFavorite,
      isVisible,
      randomAsset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      __$$_JobModelCopyWithImpl<_$_JobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobModelToJson(
      this,
    );
  }
}

abstract class _JobModel implements JobModel {
  factory _JobModel(
      {@JsonKey(name: 'absolute_url')
          required final String absoluteUrl,
      @JsonKey(name: 'data_compliance')
          final List<DataComplianceModel>? dataCompliance,
      @JsonKey(name: 'internal_job_id')
          required final int? internalJobId,
      @JsonKey(name: 'location')
          required final LocationModel? location,
      @JsonKey(name: 'metadata')
          required final List<MetaDataModel>? metaData,
      @JsonKey(name: 'id')
          required final int id,
      @JsonKey(name: 'updated_at')
          required final DateTime? updatedAt,
      @JsonKey(name: 'requisition_id')
          required final String? requisitionId,
      @JsonKey(name: 'title')
          required final String title,
      @JsonKey(name: 'education')
          final String? education,
      @JsonKey(name: 'content')
          final String? content,
      @JsonKey(name: 'departments')
          final List<DepartmentModel>? departments,
      @JsonKey(name: 'offices')
          final List<OfficeModel>? offices,
      @JsonKey(name: 'isFavorite', defaultValue: false)
          required final bool isFavorite,
      @JsonKey(name: 'isVisible', defaultValue: true)
          required final bool isVisible,
      @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
          required final RandomAsset? randomAsset}) = _$_JobModel;

  factory _JobModel.fromJson(Map<String, dynamic> json) = _$_JobModel.fromJson;

  @override
  @JsonKey(name: 'absolute_url')
  String get absoluteUrl;
  @override
  @JsonKey(name: 'data_compliance')
  List<DataComplianceModel>? get dataCompliance;
  @override
  @JsonKey(name: 'internal_job_id')
  int? get internalJobId;
  @override
  @JsonKey(name: 'location')
  LocationModel? get location;
  @override
  @JsonKey(name: 'metadata')
  List<MetaDataModel>? get metaData;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'requisition_id')
  String? get requisitionId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'education')
  String? get education;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'departments')
  List<DepartmentModel>? get departments;
  @override
  @JsonKey(name: 'offices')
  List<OfficeModel>? get offices;
  @override
  @JsonKey(name: 'isFavorite', defaultValue: false)
  bool get isFavorite;
  @override
  @JsonKey(name: 'isVisible', defaultValue: true)
  bool get isVisible;
  @override
  @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
  RandomAsset? get randomAsset;
  @override
  @JsonKey(ignore: true)
  _$$_JobModelCopyWith<_$_JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RandomAsset _$RandomAssetFromJson(Map<String, dynamic> json) {
  return _RandomAsset.fromJson(json);
}

/// @nodoc
mixin _$RandomAsset {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomAssetCopyWith<RandomAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomAssetCopyWith<$Res> {
  factory $RandomAssetCopyWith(
          RandomAsset value, $Res Function(RandomAsset) then) =
      _$RandomAssetCopyWithImpl<$Res, RandomAsset>;
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class _$RandomAssetCopyWithImpl<$Res, $Val extends RandomAsset>
    implements $RandomAssetCopyWith<$Res> {
  _$RandomAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RandomAssetCopyWith<$Res>
    implements $RandomAssetCopyWith<$Res> {
  factory _$$_RandomAssetCopyWith(
          _$_RandomAsset value, $Res Function(_$_RandomAsset) then) =
      __$$_RandomAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class __$$_RandomAssetCopyWithImpl<$Res>
    extends _$RandomAssetCopyWithImpl<$Res, _$_RandomAsset>
    implements _$$_RandomAssetCopyWith<$Res> {
  __$$_RandomAssetCopyWithImpl(
      _$_RandomAsset _value, $Res Function(_$_RandomAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_$_RandomAsset(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomAsset implements _RandomAsset {
  const _$_RandomAsset({required this.name, required this.path});

  factory _$_RandomAsset.fromJson(Map<String, dynamic> json) =>
      _$$_RandomAssetFromJson(json);

  @override
  final String name;
  @override
  final String path;

  @override
  String toString() {
    return 'RandomAsset(name: $name, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomAsset &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomAssetCopyWith<_$_RandomAsset> get copyWith =>
      __$$_RandomAssetCopyWithImpl<_$_RandomAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomAssetToJson(
      this,
    );
  }
}

abstract class _RandomAsset implements RandomAsset {
  const factory _RandomAsset(
      {required final String name,
      required final String path}) = _$_RandomAsset;

  factory _RandomAsset.fromJson(Map<String, dynamic> json) =
      _$_RandomAsset.fromJson;

  @override
  String get name;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_RandomAssetCopyWith<_$_RandomAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  dynamic get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_type')
  String get valueType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'value') dynamic value,
      @JsonKey(name: 'value_type') String valueType});
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? valueType = null,
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataModelCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$_MetaDataModelCopyWith(
          _$_MetaDataModel value, $Res Function(_$_MetaDataModel) then) =
      __$$_MetaDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'value') dynamic value,
      @JsonKey(name: 'value_type') String valueType});
}

/// @nodoc
class __$$_MetaDataModelCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$_MetaDataModel>
    implements _$$_MetaDataModelCopyWith<$Res> {
  __$$_MetaDataModelCopyWithImpl(
      _$_MetaDataModel _value, $Res Function(_$_MetaDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? valueType = null,
  }) {
    return _then(_$_MetaDataModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDataModel implements _MetaDataModel {
  const _$_MetaDataModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'value_type') required this.valueType});

  factory _$_MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'value')
  final dynamic value;
  @override
  @JsonKey(name: 'value_type')
  final String valueType;

  @override
  String toString() {
    return 'MetaDataModel(id: $id, name: $name, value: $value, valueType: $valueType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(value), valueType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      __$$_MetaDataModelCopyWithImpl<_$_MetaDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataModelToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  const factory _MetaDataModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'value') required final dynamic value,
          @JsonKey(name: 'value_type') required final String valueType}) =
      _$_MetaDataModel;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$_MetaDataModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'value')
  dynamic get value;
  @override
  @JsonKey(name: 'value_type')
  String get valueType;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataModelCopyWith<_$_MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DataComplianceModel _$DataComplianceModelFromJson(Map<String, dynamic> json) {
  return _DataComplianceModel.fromJson(json);
}

/// @nodoc
mixin _$DataComplianceModel {
  @JsonKey(name: 'type')
  dynamic get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_consent')
  bool get requiresConsent => throw _privateConstructorUsedError;
  @JsonKey(name: 'retention_period')
  dynamic get retentionPeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataComplianceModelCopyWith<DataComplianceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataComplianceModelCopyWith<$Res> {
  factory $DataComplianceModelCopyWith(
          DataComplianceModel value, $Res Function(DataComplianceModel) then) =
      _$DataComplianceModelCopyWithImpl<$Res, DataComplianceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') dynamic type,
      @JsonKey(name: 'requires_consent') bool requiresConsent,
      @JsonKey(name: 'retention_period') dynamic retentionPeriod});
}

/// @nodoc
class _$DataComplianceModelCopyWithImpl<$Res, $Val extends DataComplianceModel>
    implements $DataComplianceModelCopyWith<$Res> {
  _$DataComplianceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? requiresConsent = null,
    Object? retentionPeriod = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requiresConsent: null == requiresConsent
          ? _value.requiresConsent
          : requiresConsent // ignore: cast_nullable_to_non_nullable
              as bool,
      retentionPeriod: null == retentionPeriod
          ? _value.retentionPeriod
          : retentionPeriod // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataComplianceModelCopyWith<$Res>
    implements $DataComplianceModelCopyWith<$Res> {
  factory _$$_DataComplianceModelCopyWith(_$_DataComplianceModel value,
          $Res Function(_$_DataComplianceModel) then) =
      __$$_DataComplianceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') dynamic type,
      @JsonKey(name: 'requires_consent') bool requiresConsent,
      @JsonKey(name: 'retention_period') dynamic retentionPeriod});
}

/// @nodoc
class __$$_DataComplianceModelCopyWithImpl<$Res>
    extends _$DataComplianceModelCopyWithImpl<$Res, _$_DataComplianceModel>
    implements _$$_DataComplianceModelCopyWith<$Res> {
  __$$_DataComplianceModelCopyWithImpl(_$_DataComplianceModel _value,
      $Res Function(_$_DataComplianceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? requiresConsent = null,
    Object? retentionPeriod = null,
  }) {
    return _then(_$_DataComplianceModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requiresConsent: null == requiresConsent
          ? _value.requiresConsent
          : requiresConsent // ignore: cast_nullable_to_non_nullable
              as bool,
      retentionPeriod: null == retentionPeriod
          ? _value.retentionPeriod
          : retentionPeriod // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataComplianceModel implements _DataComplianceModel {
  const _$_DataComplianceModel(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'requires_consent') required this.requiresConsent,
      @JsonKey(name: 'retention_period') required this.retentionPeriod});

  factory _$_DataComplianceModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataComplianceModelFromJson(json);

  @override
  @JsonKey(name: 'type')
  final dynamic type;
  @override
  @JsonKey(name: 'requires_consent')
  final bool requiresConsent;
  @override
  @JsonKey(name: 'retention_period')
  final dynamic retentionPeriod;

  @override
  String toString() {
    return 'DataComplianceModel(type: $type, requiresConsent: $requiresConsent, retentionPeriod: $retentionPeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataComplianceModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.requiresConsent, requiresConsent) ||
                other.requiresConsent == requiresConsent) &&
            const DeepCollectionEquality()
                .equals(other.retentionPeriod, retentionPeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      requiresConsent,
      const DeepCollectionEquality().hash(retentionPeriod));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataComplianceModelCopyWith<_$_DataComplianceModel> get copyWith =>
      __$$_DataComplianceModelCopyWithImpl<_$_DataComplianceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataComplianceModelToJson(
      this,
    );
  }
}

abstract class _DataComplianceModel implements DataComplianceModel {
  const factory _DataComplianceModel(
      {@JsonKey(name: 'type')
          required final dynamic type,
      @JsonKey(name: 'requires_consent')
          required final bool requiresConsent,
      @JsonKey(name: 'retention_period')
          required final dynamic retentionPeriod}) = _$_DataComplianceModel;

  factory _DataComplianceModel.fromJson(Map<String, dynamic> json) =
      _$_DataComplianceModel.fromJson;

  @override
  @JsonKey(name: 'type')
  dynamic get type;
  @override
  @JsonKey(name: 'requires_consent')
  bool get requiresConsent;
  @override
  @JsonKey(name: 'retention_period')
  dynamic get retentionPeriod;
  @override
  @JsonKey(ignore: true)
  _$$_DataComplianceModelCopyWith<_$_DataComplianceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$_LocationModel>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_LocationModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel({@JsonKey(name: 'name') required this.name});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'LocationModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {@JsonKey(name: 'name') required final String name}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ValueModel _$ValueModelFromJson(Map<String, dynamic> json) {
  return _ValueModel.fromJson(json);
}

/// @nodoc
mixin _$ValueModel {
  @JsonKey(name: 'unit')
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueModelCopyWith<ValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueModelCopyWith<$Res> {
  factory $ValueModelCopyWith(
          ValueModel value, $Res Function(ValueModel) then) =
      _$ValueModelCopyWithImpl<$Res, ValueModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'amount') String amount});
}

/// @nodoc
class _$ValueModelCopyWithImpl<$Res, $Val extends ValueModel>
    implements $ValueModelCopyWith<$Res> {
  _$ValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValueModelCopyWith<$Res>
    implements $ValueModelCopyWith<$Res> {
  factory _$$_ValueModelCopyWith(
          _$_ValueModel value, $Res Function(_$_ValueModel) then) =
      __$$_ValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'amount') String amount});
}

/// @nodoc
class __$$_ValueModelCopyWithImpl<$Res>
    extends _$ValueModelCopyWithImpl<$Res, _$_ValueModel>
    implements _$$_ValueModelCopyWith<$Res> {
  __$$_ValueModelCopyWithImpl(
      _$_ValueModel _value, $Res Function(_$_ValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? amount = null,
  }) {
    return _then(_$_ValueModel(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ValueModel implements _ValueModel {
  const _$_ValueModel(
      {@JsonKey(name: 'unit') required this.unit,
      @JsonKey(name: 'amount') required this.amount});

  factory _$_ValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_ValueModelFromJson(json);

  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'amount')
  final String amount;

  @override
  String toString() {
    return 'ValueModel(unit: $unit, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueModel &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unit, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValueModelCopyWith<_$_ValueModel> get copyWith =>
      __$$_ValueModelCopyWithImpl<_$_ValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValueModelToJson(
      this,
    );
  }
}

abstract class _ValueModel implements ValueModel {
  const factory _ValueModel(
      {@JsonKey(name: 'unit') required final String unit,
      @JsonKey(name: 'amount') required final String amount}) = _$_ValueModel;

  factory _ValueModel.fromJson(Map<String, dynamic> json) =
      _$_ValueModel.fromJson;

  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'amount')
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ValueModelCopyWith<_$_ValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call({@JsonKey(name: 'total') int total});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaModelCopyWith<$Res> implements $MetaModelCopyWith<$Res> {
  factory _$$_MetaModelCopyWith(
          _$_MetaModel value, $Res Function(_$_MetaModel) then) =
      __$$_MetaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'total') int total});
}

/// @nodoc
class __$$_MetaModelCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$_MetaModel>
    implements _$$_MetaModelCopyWith<$Res> {
  __$$_MetaModelCopyWithImpl(
      _$_MetaModel _value, $Res Function(_$_MetaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$_MetaModel(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaModel implements _MetaModel {
  const _$_MetaModel({@JsonKey(name: 'total') required this.total});

  factory _$_MetaModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaModelFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;

  @override
  String toString() {
    return 'MetaModel(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaModel &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaModelCopyWith<_$_MetaModel> get copyWith =>
      __$$_MetaModelCopyWithImpl<_$_MetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaModelToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel({@JsonKey(name: 'total') required final int total}) =
      _$_MetaModel;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$_MetaModel.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_MetaModelCopyWith<_$_MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
