import 'package:altow_greenhouse_jobs/core/models/api_path.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../../core/error/http_error_actions.dart';
import '../../../../core/error/server_response_models/function_errors_enum.dart';
import '../../../../core/network/dio_client/dio_client_service.dart';
import 'job_remote_data_source.dart';

class JobsRemoteDataSourceImpl implements JobsRemoteDataSource {
  final RestClient client;
  final logger = Logger();

  JobsRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<List<JobModel>?> getJobs() async {
    try {
      var response = await client.getJobs(AppApiPath.boardToken).then((value) {
        logger.i(value);
        return value;
      });

      return response.jobs;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.getJobs,
      );
      return null;
    }
  }

  @override
  Future<JobModel?> retrieveJob({required int jobId}) async {
    try {
      var response =
          await client.retrieveJob(AppApiPath.boardToken, jobId).then((value) {
        logger.i(value);
        return value;
      });

      return response;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.retrieveJob,
      );
      return null;
    }
  }

  @override
  Future<List<DepartmentModel>?> getDepartments() async {
    try {
      var response =
          await client.getDepartments(AppApiPath.boardToken).then((value) {
        logger.i(value);
        return value;
      });

      return response;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.listDepartments,
      );
      return null;
    }
  }

  @override
  Future<List<OfficeModel>?> getOffices() async {
    try {
      var response =
          await client.getOffices(AppApiPath.boardToken).then((value) {
        logger.i(value);
        return value;
      });

      return response;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.listOffices,
      );
      return null;
    }
  }
}
