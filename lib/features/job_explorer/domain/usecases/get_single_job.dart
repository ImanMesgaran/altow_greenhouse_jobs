import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:dartz/dartz.dart';

class GetSingleJob {
  final JobsRepository repository;

  GetSingleJob(this.repository);

  Future<Either<Failure, JobModel?>> call({required int jobId}) async {
    var result = await repository.retrieveJob(jobId: jobId);
    return result;
  }
}
