import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';

abstract class JobsRemoteDataSource {
  Future<List<JobModel>?> getJobs();
  Future<JobModel?> retrieveJob({required int jobId});
  Future<List<OfficeModel>?> getOffices();
  Future<List<DepartmentModel>?> getDepartments();
}
