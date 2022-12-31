import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/job_repository.dart';

class GetJobs {
  final JobsRepository repository;

  GetJobs(this.repository);

  Future<Either<Failure, List<JobModel>?>> call() async {
    var result = await repository.getJobs();
    return result;
  }
}
