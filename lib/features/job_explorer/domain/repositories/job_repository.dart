import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class JobsRepository {
  Future<Either<Failure, bool>> insertJob({required List<JobModel> jobs});

  Future<Either<Failure, List<JobModel>?>> getJobs();

  Future<Either<Failure, JobModel?>> retrieveJob({required int jobId});

  Future<Either<Failure, bool>> insertOffices(
      {required List<OfficeModel> offices});

  Future<Either<Failure, List<OfficeModel>?>> listOffices();

  Future<Either<Failure, bool>> insertDepartments(
      {required List<DepartmentModel> departments});

  Future<Either<Failure, List<DepartmentModel>?>> listDepartments();
}
