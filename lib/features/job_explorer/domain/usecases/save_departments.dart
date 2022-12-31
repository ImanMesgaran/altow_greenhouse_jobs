import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

class SaveDepartments {
  final JobsRepository repository;

  SaveDepartments(this.repository);

  Future<Either<Failure, bool>> call(
      {required List<DepartmentModel> departments}) async {
    var result = await repository.insertDepartments(departments: departments);
    return result;
  }
}
