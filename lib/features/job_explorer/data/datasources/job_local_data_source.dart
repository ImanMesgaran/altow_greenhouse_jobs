import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';

abstract class JobsLocalDataSource {
  Future<void> insertJob({required List<JobModel> jobs});
  Future<List<JobModel>?> getJobs();
  Future<JobModel?> retrieveJob({required int jobId});
  Future<void> insertOffices({required List<OfficeModel> offices});
  Future<List<OfficeModel>?> getOffices();
  Future<void> insertDepartments({required List<DepartmentModel> departments});
  Future<List<DepartmentModel>?> getDepartments();
}
