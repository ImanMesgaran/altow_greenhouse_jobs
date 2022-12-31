import 'package:altow_greenhouse_jobs/core/network/network_info.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:dartz/dartz.dart';
import 'package:collection/collection.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/job_repository.dart';
import '../datasources/job_local_data_source.dart';
import '../datasources/job_remote_data_source.dart';

class JobsRepositoryImpl implements JobsRepository {
  final JobsRemoteDataSource remoteDataSource;
  final JobsLocalDataSource localDataSource;
  final NetworkConnection networkInfo;

  JobsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, bool>> insertJob(
      {required List<JobModel> jobs}) async {
    try {
      await localDataSource.insertJob(jobs: jobs);
      return Right(true);
    } on CacheException {
      return Left(CacheFailure(message: 'insertJob cache failure'));
    }
  }

  @override
  Future<Either<Failure, List<JobModel>?>> getJobs() async {
    if (await networkInfo.isConnected) {
      try {
        List<JobModel>? _jobs = <JobModel>[];
        final result = await remoteDataSource.getJobs();

        /// preserve favorite items
        final localResults = await localDataSource.getJobs();
        if (result != null)
          for (int i = 0; i < result.length; i++) {
            final JobModel? previousItem =
                localResults?.firstWhereOrNull((e) => e.id == result[i].id);
            _jobs.add(result[i]
                .copyWith(isFavorite: previousItem?.isFavorite ?? false));
          }

        return Right(_jobs);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getJobs();
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'getJobs cache failure'));
      }
    }
  }

  @override
  Future<Either<Failure, JobModel?>> retrieveJob({required int jobId}) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.retrieveJob(jobId: jobId);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.retrieveJob(jobId: jobId);
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'retrieveJob cache failure'));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> insertDepartments(
      {required List<DepartmentModel> departments}) async {
    try {
      await localDataSource.insertDepartments(departments: departments);
      return Right(true);
    } on CacheException {
      return Left(CacheFailure(message: 'insertDepartments cache failure'));
    }
  }

  @override
  Future<Either<Failure, List<DepartmentModel>?>> listDepartments() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getDepartments();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getDepartments();
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'listDepartments cache failure'));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> insertOffices(
      {required List<OfficeModel> offices}) async {
    try {
      await localDataSource.insertOffices(offices: offices);
      return Right(true);
    } on CacheException {
      return Left(CacheFailure(message: 'insertOffices cache failure'));
    }
  }

  @override
  Future<Either<Failure, List<OfficeModel>?>> listOffices() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getOffices();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getOffices();
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'listOffices cache failure'));
      }
    }
  }
}
