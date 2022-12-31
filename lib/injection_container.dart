import 'package:altow_greenhouse_jobs/features/job_explorer/data/datasources/job_local_data_source.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/datasources/job_local_data_source_impl.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/datasources/job_remote_data_source.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/datasources/job_remote_data_source_impl.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/repositories/job_repository_impl.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/repositories/job_repository.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_departments.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_jobs.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_offices.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_single_job.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/save_departments.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/save_jobs.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/database/drift_database.dart';
import 'core/network/dio_client/dio_client_service.dart';
import 'core/network/network_info.dart';
import 'features/job_explorer/domain/usecases/save_offices.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  // * Use Cases
  // ! Job Board UseCases
  getIt.registerLazySingleton(() => SaveJobs(getIt()));
  getIt.registerLazySingleton(() => GetJobs(getIt()));
  getIt.registerLazySingleton(() => GetSingleJob(getIt()));
  getIt.registerLazySingleton(() => SaveDepartments(getIt()));
  getIt.registerLazySingleton(() => GetDepartments(getIt()));
  getIt.registerLazySingleton(() => SaveOffices(getIt()));
  getIt.registerLazySingleton(() => GetOffices(getIt()));

  // * Repository
  // ! Job Board repository
  getIt.registerLazySingleton<JobsRepository>(() => JobsRepositoryImpl(
        localDataSource: getIt(),
        remoteDataSource: getIt(),
        networkInfo: getIt(),
      ));

  // * Data Sources
  // ! Job Board DataSources
  getIt.registerLazySingleton<JobsRemoteDataSource>(
    () => JobsRemoteDataSourceImpl(
      client: getIt(),
    ),
  );

  getIt.registerLazySingleton<JobsLocalDataSource>(
      () => JobsLocalDataSourceImpl(database: getIt()));

  //! Core
  getIt.registerLazySingleton<NetworkConnection>(() => NetworkConnection());

  //! External
  getIt.registerFactory(() => Dio());
  getIt.registerLazySingleton(() => RestClient(getIt()));
  getIt.registerLazySingleton<MyDatabase>(() => MyDatabase());
}
