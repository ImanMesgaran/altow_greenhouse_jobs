import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_list_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/api_path.dart';

part 'dio_client_service.g.dart';

@RestApi(baseUrl: "${AppApiPath.greenHouseBaseUrl}")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // Greenhouse Jobs end-point clients
  @GET("${AppApiPath.listJobs}")
  Future<JobListModel> getJobs(
    @Path("board_token") String boardToken,
  );

  @GET("${AppApiPath.retrieveJob}")
  Future<JobModel> retrieveJob(
    @Path("board_token") String boardToken,
    @Path("job_id") int jobId,
  );

  @GET("${AppApiPath.listOffices}")
  Future<List<OfficeModel>> getOffices(
    @Path("board_token") String boardToken,
  );

  @GET("${AppApiPath.listDepartments}")
  Future<List<DepartmentModel>> getDepartments(
    @Path("board_token") String boardToken,
  );
}
