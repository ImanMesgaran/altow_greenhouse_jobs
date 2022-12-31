// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobModel _$$_JobModelFromJson(Map<String, dynamic> json) => _$_JobModel(
      absoluteUrl: json['absolute_url'] as String,
      dataCompliance: (json['data_compliance'] as List<dynamic>?)
          ?.map((e) => DataComplianceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      internalJobId: json['internal_job_id'] as int?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      metaData: (json['metadata'] as List<dynamic>?)
          ?.map((e) => MetaDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      requisitionId: json['requisition_id'] as String?,
      title: json['title'] as String,
      education: json['education'] as String?,
      content: json['content'] as String?,
      departments: (json['departments'] as List<dynamic>?)
          ?.map((e) => DepartmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      offices: (json['offices'] as List<dynamic>?)
          ?.map((e) => OfficeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      isVisible: json['isVisible'] as bool? ?? true,
      randomAsset: json['randomAsset'] == null
          ? RandomAssetGenerator.getFakeLogo()
          : RandomAsset.fromJson(json['randomAsset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobModelToJson(_$_JobModel instance) =>
    <String, dynamic>{
      'absolute_url': instance.absoluteUrl,
      'data_compliance': instance.dataCompliance,
      'internal_job_id': instance.internalJobId,
      'location': instance.location,
      'metadata': instance.metaData,
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'requisition_id': instance.requisitionId,
      'title': instance.title,
      'education': instance.education,
      'content': instance.content,
      'departments': instance.departments,
      'offices': instance.offices,
      'isFavorite': instance.isFavorite,
      'isVisible': instance.isVisible,
      'randomAsset': instance.randomAsset,
    };

_$_RandomAsset _$$_RandomAssetFromJson(Map<String, dynamic> json) =>
    _$_RandomAsset(
      name: json['name'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$_RandomAssetToJson(_$_RandomAsset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
    };

_$_MetaDataModel _$$_MetaDataModelFromJson(Map<String, dynamic> json) =>
    _$_MetaDataModel(
      id: json['id'] as int,
      name: json['name'] as String,
      value: json['value'],
      valueType: json['value_type'] as String,
    );

Map<String, dynamic> _$$_MetaDataModelToJson(_$_MetaDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'value_type': instance.valueType,
    };

_$_DataComplianceModel _$$_DataComplianceModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataComplianceModel(
      type: json['type'],
      requiresConsent: json['requires_consent'] as bool,
      retentionPeriod: json['retention_period'],
    );

Map<String, dynamic> _$$_DataComplianceModelToJson(
        _$_DataComplianceModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'requires_consent': instance.requiresConsent,
      'retention_period': instance.retentionPeriod,
    };

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ValueModel _$$_ValueModelFromJson(Map<String, dynamic> json) =>
    _$_ValueModel(
      unit: json['unit'] as String,
      amount: json['amount'] as String,
    );

Map<String, dynamic> _$$_ValueModelToJson(_$_ValueModel instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'amount': instance.amount,
    };

_$_MetaModel _$$_MetaModelFromJson(Map<String, dynamic> json) => _$_MetaModel(
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_MetaModelToJson(_$_MetaModel instance) =>
    <String, dynamic>{
      'total': instance.total,
    };
