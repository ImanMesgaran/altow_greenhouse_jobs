// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentModel _$$_DepartmentModelFromJson(Map<String, dynamic> json) =>
    _$_DepartmentModel(
      id: json['id'] as int,
      name: json['name'] as String,
      childIds: json['child_ids'] as List<dynamic>,
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$$_DepartmentModelToJson(_$_DepartmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'child_ids': instance.childIds,
      'parent_id': instance.parentId,
    };
