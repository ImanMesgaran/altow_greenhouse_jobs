import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/office_model.dart';

class SaveOffices {
  final JobsRepository repository;

  SaveOffices(this.repository);

  Future<Either<Failure, bool>> call(
      {required List<OfficeModel> offices}) async {
    var result = await repository.insertOffices(offices: offices);
    return result;
  }
}
