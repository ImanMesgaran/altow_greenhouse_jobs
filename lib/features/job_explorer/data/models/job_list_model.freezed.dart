// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobListModel _$JobListModelFromJson(Map<String, dynamic> json) {
  return _JobListModel.fromJson(json);
}

/// @nodoc
mixin _$JobListModel {
  @JsonKey(name: 'jobs')
  List<JobModel> get jobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaModel get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobListModelCopyWith<JobListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobListModelCopyWith<$Res> {
  factory $JobListModelCopyWith(
          JobListModel value, $Res Function(JobListModel) then) =
      _$JobListModelCopyWithImpl<$Res, JobListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'jobs') List<JobModel> jobs,
      @JsonKey(name: 'meta') MetaModel meta});

  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$JobListModelCopyWithImpl<$Res, $Val extends JobListModel>
    implements $JobListModelCopyWith<$Res> {
  _$JobListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobs = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      jobs: null == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobListModelCopyWith<$Res>
    implements $JobListModelCopyWith<$Res> {
  factory _$$_JobListModelCopyWith(
          _$_JobListModel value, $Res Function(_$_JobListModel) then) =
      __$$_JobListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'jobs') List<JobModel> jobs,
      @JsonKey(name: 'meta') MetaModel meta});

  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_JobListModelCopyWithImpl<$Res>
    extends _$JobListModelCopyWithImpl<$Res, _$_JobListModel>
    implements _$$_JobListModelCopyWith<$Res> {
  __$$_JobListModelCopyWithImpl(
      _$_JobListModel _value, $Res Function(_$_JobListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobs = null,
    Object? meta = null,
  }) {
    return _then(_$_JobListModel(
      jobs: null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobListModel implements _JobListModel {
  const _$_JobListModel(
      {@JsonKey(name: 'jobs') required final List<JobModel> jobs,
      @JsonKey(name: 'meta') required this.meta})
      : _jobs = jobs;

  factory _$_JobListModel.fromJson(Map<String, dynamic> json) =>
      _$$_JobListModelFromJson(json);

  final List<JobModel> _jobs;
  @override
  @JsonKey(name: 'jobs')
  List<JobModel> get jobs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  @override
  @JsonKey(name: 'meta')
  final MetaModel meta;

  @override
  String toString() {
    return 'JobListModel(jobs: $jobs, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobListModel &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_jobs), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobListModelCopyWith<_$_JobListModel> get copyWith =>
      __$$_JobListModelCopyWithImpl<_$_JobListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobListModelToJson(
      this,
    );
  }
}

abstract class _JobListModel implements JobListModel {
  const factory _JobListModel(
      {@JsonKey(name: 'jobs') required final List<JobModel> jobs,
      @JsonKey(name: 'meta') required final MetaModel meta}) = _$_JobListModel;

  factory _JobListModel.fromJson(Map<String, dynamic> json) =
      _$_JobListModel.fromJson;

  @override
  @JsonKey(name: 'jobs')
  List<JobModel> get jobs;
  @override
  @JsonKey(name: 'meta')
  MetaModel get meta;
  @override
  @JsonKey(ignore: true)
  _$$_JobListModelCopyWith<_$_JobListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
