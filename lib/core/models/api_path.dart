class AppApiPath {
  static const greenHouseBaseUrl =
      "https://boards-api.greenhouse.io/v1/boards/";

  static const boardToken = "example";

  // JobBoard API end-points
  static const listJobs = "{board_token}/jobs?content=true";
  static const retrieveJob = "{board_token}/jobs/{job_id}";
  static const listOffices = "{board_token}/offices";
  static const listDepartments = "{board_token}/departments";
}
