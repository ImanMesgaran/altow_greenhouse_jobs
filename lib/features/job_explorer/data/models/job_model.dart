import 'package:altow_greenhouse_jobs/core/models/random_asset_generator.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  factory JobModel({
    @JsonKey(name: 'absolute_url') required String absoluteUrl,
    @JsonKey(name: 'data_compliance') List<DataComplianceModel>? dataCompliance,
    @JsonKey(name: 'internal_job_id') required int? internalJobId,
    @JsonKey(name: 'location') required LocationModel? location,
    @JsonKey(name: 'metadata') required List<MetaDataModel>? metaData,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'requisition_id') required String? requisitionId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'education') String? education,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'departments') List<DepartmentModel>? departments,
    @JsonKey(name: 'offices') List<OfficeModel>? offices,
    @JsonKey(name: 'isFavorite', defaultValue: false) required bool isFavorite,
    @JsonKey(name: 'isVisible', defaultValue: true) required bool isVisible,
    @JsonKey(name: 'randomAsset', defaultValue: RandomAssetGenerator.getFakeLogo)
        required RandomAsset? randomAsset,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, Object?> json) =>
      _$JobModelFromJson(json);
}

@freezed
class RandomAsset with _$RandomAsset {
  const factory RandomAsset({
    required String name,
    required String path,
  }) = _RandomAsset;

  factory RandomAsset.fromJson(Map<String, Object?> json) =>
      _$RandomAssetFromJson(json);
}

@freezed
class MetaDataModel with _$MetaDataModel {
  const factory MetaDataModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'value') required dynamic value,
    @JsonKey(name: 'value_type') required String valueType,
  }) = _MetaDataModel;

  factory MetaDataModel.fromJson(Map<String, Object?> json) =>
      _$MetaDataModelFromJson(json);
}

@freezed
class DataComplianceModel with _$DataComplianceModel {
  const factory DataComplianceModel({
    @JsonKey(name: 'type') required dynamic type,
    @JsonKey(name: 'requires_consent') required bool requiresConsent,
    @JsonKey(name: 'retention_period') required dynamic retentionPeriod,
  }) = _DataComplianceModel;

  factory DataComplianceModel.fromJson(Map<String, Object?> json) =>
      _$DataComplianceModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: 'name') required String name,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class ValueModel with _$ValueModel {
  const factory ValueModel({
    @JsonKey(name: 'unit') required String unit,
    @JsonKey(name: 'amount') required String amount,
  }) = _ValueModel;

  factory ValueModel.fromJson(Map<String, Object?> json) =>
      _$ValueModelFromJson(json);
}

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'total') required int total,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, Object?> json) =>
      _$MetaModelFromJson(json);
}
