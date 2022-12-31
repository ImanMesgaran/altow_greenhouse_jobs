import 'package:freezed_annotation/freezed_annotation.dart';

part 'office_model.freezed.dart';
part 'office_model.g.dart';

@freezed
class OfficeModel with _$OfficeModel {
  const factory OfficeModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'location') required String? location,
    @JsonKey(name: 'child_ids') required List<dynamic>? childIds,
    @JsonKey(name: 'parent_id') required dynamic parentId,
  }) = _OfficeModel;

  factory OfficeModel.fromJson(Map<String, Object?> json) =>
      _$OfficeModelFromJson(json);
}
