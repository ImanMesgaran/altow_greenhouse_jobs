// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobListModel _$$_JobListModelFromJson(Map<String, dynamic> json) =>
    _$_JobListModel(
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => JobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobListModelToJson(_$_JobListModel instance) =>
    <String, dynamic>{
      'jobs': instance.jobs,
      'meta': instance.meta,
    };
