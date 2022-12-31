import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

class GetOffices {
  final JobsRepository repository;

  GetOffices(this.repository);

  Future<Either<Failure, List<OfficeModel>?>> call() async {
    var result = await repository.listOffices();
    return result;
  }
}
