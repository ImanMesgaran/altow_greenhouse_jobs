import 'dart:async';

import 'package:altow_greenhouse_jobs/core/error/failures.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_departments.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_jobs.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_offices.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/get_single_job.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/save_departments.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/save_jobs.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/domain/usecases/save_offices.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/presentation/widgets/chips/filter_chip.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:get_it/get_it.dart' as di;
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

part 'job_board_state.dart';

final _saveJobs = di.GetIt.instance<SaveJobs>();
final _getJobs = di.GetIt.instance<GetJobs>();
final _getSingleJob = di.GetIt.instance<GetSingleJob>();
final _saveDepartments = di.GetIt.instance<SaveDepartments>();
final _getDepartments = di.GetIt.instance<GetDepartments>();
final _getOffices = di.GetIt.instance<GetOffices>();
final _saveOffices = di.GetIt.instance<SaveOffices>();

final jobBoardProvider =
    StateNotifierProvider<JobBoardProvider, JobBoardState>((ref) {
  return JobBoardProvider(
    saveJobs: _saveJobs,
    getJobs: _getJobs,
    getSingleJob: _getSingleJob,
    saveDepartments: _saveDepartments,
    getDepartments: _getDepartments,
    saveOffices: _saveOffices,
    getOffices: _getOffices,
  );
});

class JobBoardProvider extends StateNotifier<JobBoardState> {
  final GetJobs getJobs;
  final SaveJobs saveJobs;
  final GetSingleJob getSingleJob;
  final GetDepartments getDepartments;
  final SaveDepartments saveDepartments;
  final GetOffices getOffices;
  final SaveOffices saveOffices;

  JobBoardProvider({
    required this.getJobs,
    required this.saveJobs,
    required this.getSingleJob,
    required this.getDepartments,
    required this.saveDepartments,
    required this.getOffices,
    required this.saveOffices,
  }) : super(JobBoardState.initial());

  Future<void> loadJobs() async {
    List<String> jobLocations = <String>[];
    state = JobBoardState.loading(prevState: state);
    final _failureOrJobs = await getJobs();

    _failureOrJobs.fold(
      (failure) {
        state = JobBoardState.failure(
          prevState: state,
          serverFailure: failure as ServerFailure,
        );
      },
      (jobsData) async {
        if (jobsData != null) await saveJobs(jobs: jobsData);

        if (jobsData != null)
          jobLocations = jobsData.map((e) => e.location!.name).toSet().toList();

        final _filters = jobLocations
            .map((e) => FilterChipModel(
                  text: e,
                  isSelected: false,
                ))
            .toList();

        state = JobBoardState.jobsLoaded(
            prevState: state,
            jobs: jobsData ?? <JobModel>[],
            filters: _filters);
      },
    );
  }

  Future<void> loadSingleJob({required int jobId}) async {
    state = JobBoardState.loading(prevState: state);
    final _failureOrSingleJob = await getSingleJob(jobId: jobId);

    _failureOrSingleJob.fold(
      (failure) {
        state = JobBoardState.failure(
          prevState: state,
          serverFailure: failure as ServerFailure,
        );
      },
      (jobData) async {
        state = JobBoardState.singleJobLoaded(
          prevState: state,
          job: jobData!,
        );
      },
    );
  }

  Future<void> addJobToFavorite({required JobModel job}) async {
    List<JobModel> _jobs = List.from(state.jobs!);

    for (int i = 0; i < _jobs.length; i++) {
      if (_jobs[i].id == job.id) {
        _jobs[i] = _jobs[i].copyWith(isFavorite: !(_jobs[i].isFavorite));
      }
    }
    // save edited jobs to the database
    await saveJobs(jobs: _jobs);
    state = state.copyWith(jobs: _jobs);
  }

  Future<void> loadOffices() async {
    state = JobBoardState.loading(prevState: state);
    final _failureOrOffices = await getOffices();

    _failureOrOffices.fold(
      (failure) {
        state = JobBoardState.failure(
          prevState: state,
          serverFailure: failure as ServerFailure,
        );
      },
      (officesData) async {
        if (officesData != null) await saveOffices(offices: officesData);

        state = JobBoardState.officesLoaded(
          prevState: state,
          offices: officesData!,
        );
      },
    );
  }

  Future<void> loadDepartments() async {
    state = JobBoardState.loading(prevState: state);
    final _failureOrDepartments = await getDepartments();

    _failureOrDepartments.fold(
      (failure) {
        state = JobBoardState.failure(
          prevState: state,
          serverFailure: failure as ServerFailure,
        );
      },
      (departmentsData) async {
        if (departmentsData != null)
          await saveDepartments(departments: departmentsData);

        state = JobBoardState.departmentsLoaded(
          prevState: state,
          departments: departmentsData!,
        );
      },
    );
  }

  void filterJobs({required FilterChipModel filterModel}) {
    List<FilterChipModel> _filters = List.from(state.filters);
    List<JobModel>? _jobs = <JobModel>[];

    for (int i = 0; i < _filters.length; i++) {
      if (_filters[i].text == filterModel.text) {
        _filters.removeAt(i);
        _filters.insert(
          i,
          FilterChipModel(
            text: state.filters[i].text,
            isSelected: !state.filters[i].isSelected,
          ),
        );
      } else {
        _filters.removeAt(i);
        _filters.insert(
          i,
          FilterChipModel(
            text: state.filters[i].text,
            isSelected: false,
          ),
        );
      }
    }
    _jobs = applyJobFilter(_filters);

    state = state.copyWith(
      filters: _filters,
      jobs: _jobs,
    );
  }

  List<JobModel>? applyJobFilter(List<FilterChipModel> filters) {
    List<JobModel> _jobs = <JobModel>[];
    final _activeFilter = filters.firstWhereOrNull((f) => f.isSelected);

    if (state.jobs == null) return null;
    for (int i = 0; i < (state.jobs?.length ?? 0); i++) {
      if (_activeFilter == null ||
          (_activeFilter != null &&
              state.jobs![i].location!.name == _activeFilter.text)) {
        _jobs.add(state.jobs![i].copyWith(isVisible: true));
      } else {
        _jobs.add(state.jobs![i].copyWith(isVisible: false));
      }
    }

    return _jobs;
  }

  StreamSubscription<List<JobModel>>? results;
  BehaviorSubject<String> _searchQueryController =
      BehaviorSubject<String>.seeded("");

  void searchJobs({required String query}) {
    if (state.jobs == null) return null;

    _searchQueryController
        .distinct()
        .debounceTime(Duration(milliseconds: 500))
        .switchMap((value) async* {
      final _searchResults = state.jobs?.where((j) {
        final _inTitle = j.title.toLowerCase().contains(query.toLowerCase());
        final _inRequisition =
            j.requisitionId?.toLowerCase().contains(query.toLowerCase()) ??
                false;
        final _inLocations =
            j.location?.name.toLowerCase().contains(query.toLowerCase()) ??
                false;

        // possible search criteria to use in the future
        /*
        final _inDepartments =
            (j.departments?.where((d) => d.name.contains(query)) != null) &&
                (j.departments?.where((d) => d.name.contains(query)))!
                    .isNotEmpty;
        final _inOffices =
            (j.offices?.where((d) => d.name.toLowerCase().contains(query)) !=
                    null) &&
                (j.offices?.where((d) => d.name.toLowerCase().contains(query)))!
                    .isNotEmpty;
        */

        return _inTitle || _inRequisition || _inLocations;
      }).toList();

      yield _searchResults;
    }).listen((event) {
      List<JobModel> _jobs = <JobModel>[];
      for (int i = 0; i < (state.jobs?.length ?? 0); i++) {
        if (query.isEmpty)
          _jobs.add(state.jobs![i].copyWith(isVisible: true));
        else if (event != null && event.contains(state.jobs?[i]))
          _jobs.add(state.jobs![i].copyWith(isVisible: true));
        else
          _jobs.add(state.jobs![i].copyWith(isVisible: false));
      }

      state = state.copyWith(jobs: _jobs, query: query);
    });
  }
}
