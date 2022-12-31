part of 'job_board_provider.dart';

class JobBoardState extends Equatable {
  final ServerFailure? failure;
  final bool isFailure;
  final bool isLoading;
  final bool areJobsLoaded;
  final List<JobModel>? jobs;
  final JobModel? loadedJob;
  final List<OfficeModel>? offices;
  final List<DepartmentModel>? departments;
  final OfficeModel? selectedOffice;
  final List<FilterChipModel> filters;
  final String query;

  JobBoardState({
    required this.failure,
    required this.isFailure,
    required this.isLoading,
    required this.areJobsLoaded,
    required this.jobs,
    required this.loadedJob,
    required this.offices,
    required this.departments,
    required this.selectedOffice,
    required this.filters,
    required this.query,
  });

  factory JobBoardState.initial() => JobBoardState(
        failure: null,
        isFailure: false,
        isLoading: false,
        areJobsLoaded: false,
        jobs: null,
        loadedJob: null,
        offices: null,
        departments: null,
        selectedOffice: null,
        filters: <FilterChipModel>[],
        query: "",
      );

  factory JobBoardState.loading({
    required JobBoardState prevState,
  }) {
    return JobBoardState(
      failure: null,
      isFailure: false,
      isLoading: true,
      areJobsLoaded: prevState.areJobsLoaded,
      jobs: prevState.jobs,
      loadedJob: prevState.loadedJob,
      offices: prevState.offices,
      departments: prevState.departments,
      selectedOffice: prevState.selectedOffice,
      filters: prevState.filters,
      query: prevState.query,
    );
  }

  factory JobBoardState.jobsLoaded({
    required JobBoardState prevState,
    required List<JobModel> jobs,
    required List<FilterChipModel> filters,
  }) =>
      JobBoardState(
        failure: null,
        isFailure: false,
        isLoading: false,
        areJobsLoaded: true,
        jobs: jobs,
        loadedJob: null,
        offices: prevState.offices,
        departments: prevState.departments,
        selectedOffice: null,
        filters: filters,
        query: "",
      );

  factory JobBoardState.singleJobLoaded({
    required JobBoardState prevState,
    required JobModel job,
  }) =>
      JobBoardState(
        failure: null,
        isFailure: false,
        isLoading: false,
        areJobsLoaded: prevState.areJobsLoaded,
        jobs: prevState.jobs,
        loadedJob: job,
        offices: prevState.offices,
        departments: prevState.departments,
        selectedOffice: prevState.selectedOffice,
        filters: prevState.filters,
        query: prevState.query,
      );

  factory JobBoardState.officesLoaded({
    required JobBoardState prevState,
    required List<OfficeModel> offices,
  }) =>
      JobBoardState(
        failure: null,
        isFailure: false,
        isLoading: false,
        areJobsLoaded: prevState.areJobsLoaded,
        jobs: prevState.jobs,
        loadedJob: prevState.loadedJob,
        offices: offices,
        departments: prevState.departments,
        selectedOffice: null,
        filters: prevState.filters,
        query: prevState.query,
      );

  factory JobBoardState.departmentsLoaded({
    required JobBoardState prevState,
    required List<DepartmentModel> departments,
  }) =>
      JobBoardState(
        failure: null,
        isFailure: false,
        isLoading: false,
        areJobsLoaded: prevState.areJobsLoaded,
        jobs: prevState.jobs,
        loadedJob: prevState.loadedJob,
        offices: prevState.offices,
        departments: departments,
        selectedOffice: prevState.selectedOffice,
        filters: prevState.filters,
        query: prevState.query,
      );

  factory JobBoardState.failure({
    required JobBoardState prevState,
    required ServerFailure serverFailure,
  }) =>
      JobBoardState(
        failure: null,
        isFailure: true,
        isLoading: false,
        areJobsLoaded: prevState.areJobsLoaded,
        jobs: prevState.jobs,
        loadedJob: prevState.loadedJob,
        offices: prevState.offices,
        departments: prevState.departments,
        selectedOffice: prevState.selectedOffice,
        filters: prevState.filters,
        query: prevState.query,
      );

  JobBoardState copyWith({
    ServerFailure? failure,
    bool? isLoading,
    bool? areJobsLoaded,
    List<JobModel>? jobs,
    JobModel? job,
    List<OfficeModel>? offices,
    List<DepartmentModel>? departments,
    OfficeModel? selectedOffice,
    List<FilterChipModel>? filters,
    String? query,
  }) {
    return JobBoardState(
      isFailure: false,
      failure: failure ?? this.failure,
      isLoading: isLoading ?? this.isLoading,
      areJobsLoaded: areJobsLoaded ?? this.areJobsLoaded,
      jobs: jobs ?? this.jobs,
      loadedJob: job ?? this.loadedJob,
      offices: offices ?? this.offices,
      departments: departments ?? this.departments,
      selectedOffice: selectedOffice ?? this.selectedOffice,
      filters: filters ?? this.filters,
      query: query ?? this.query,
    );
  }

  @override
  List<Object?> get props => [
        isFailure,
        failure,
        isLoading,
        areJobsLoaded,
        jobs,
        loadedJob,
        offices,
        departments,
        selectedOffice,
        filters,
        query,
      ];
}
