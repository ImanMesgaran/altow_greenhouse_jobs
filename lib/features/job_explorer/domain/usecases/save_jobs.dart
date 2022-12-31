import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

class SaveJobs {
  final JobsRepository repository;

  SaveJobs(this.repository);

  Future<Either<Failure, bool>> call({required List<JobModel> jobs}) async {
    var result = await repository.insertJob(jobs: jobs);
    return result;
  }
}
