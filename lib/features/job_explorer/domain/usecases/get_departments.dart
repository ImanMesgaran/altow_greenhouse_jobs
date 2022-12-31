import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

class GetDepartments {
  final JobsRepository repository;

  GetDepartments(this.repository);

  Future<Either<Failure, List<DepartmentModel>?>> call() async {
    var result = await repository.listDepartments();
    return result;
  }
}
