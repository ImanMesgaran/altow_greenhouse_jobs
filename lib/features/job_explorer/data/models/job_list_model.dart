import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_list_model.freezed.dart';
part 'job_list_model.g.dart';

@freezed
class JobListModel with _$JobListModel {
  const factory JobListModel({
    @JsonKey(name: 'jobs') required List<JobModel> jobs,
    @JsonKey(name: 'meta') required MetaModel meta,
  }) = _JobListModel;

  factory JobListModel.fromJson(Map<String, Object?> json) =>
      _$JobListModelFromJson(json);
}
