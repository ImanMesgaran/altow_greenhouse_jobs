// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfficeModel _$$_OfficeModelFromJson(Map<String, dynamic> json) =>
    _$_OfficeModel(
      id: json['id'] as int,
      name: json['name'] as String?,
      location: json['location'] as String?,
      childIds: json['child_ids'] as List<dynamic>?,
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$$_OfficeModelToJson(_$_OfficeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'child_ids': instance.childIds,
      'parent_id': instance.parentId,
    };
