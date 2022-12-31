import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'child_ids') required List<dynamic> childIds,
    @JsonKey(name: 'parent_id') required dynamic parentId,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, Object?> json) =>
      _$DepartmentModelFromJson(json);
}
