import 'dart:convert';

import 'package:altow_greenhouse_jobs/core/database/drift_database.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';

import 'job_local_data_source.dart';

class JobsLocalDataSourceImpl extends JobsLocalDataSource {
  final MyDatabase database;

  JobsLocalDataSourceImpl({
    required this.database,
  });

  @override
  Future<void> insertJob({required List<JobModel> jobs}) async {
    await database.insertJobs(jobs: jobs);
  }

  @override
  Future<List<JobModel>?> getJobs() async {
    final result = (await database.readJobs()).map((jobModel) {
      return jobModel.jobJson!;
    }).toList();

    return Future(() => result);
  }

  @override
  Future<JobModel?> retrieveJob({required int jobId}) async {
    final result = (await database.getSingleJob(id: jobId)).jobJson;
    return result;
  }

  @override
  Future<void> insertOffices({required List<OfficeModel> offices}) async {
    await database.insertOffices(offices: offices);
  }

  @override
  Future<List<OfficeModel>?> getOffices() async {
    final result = (await database.readOffices()).map((officeModel) {
      return OfficeModel.fromJson(jsonDecode(officeModel.officesJson));
    }).toList();

    return result;
  }

  @override
  Future<void> insertDepartments(
      {required List<DepartmentModel> departments}) async {
    await database.insertDepartments(departments: departments);
  }

  @override
  Future<List<DepartmentModel>?> getDepartments() async {
    final result = (await database.readDepartments()).map((departmentModel) {
      return DepartmentModel.fromJson(
          jsonDecode(departmentModel.departmentJson));
    }).toList();

    return result;
  }
}
