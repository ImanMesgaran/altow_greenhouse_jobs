import 'dart:convert';

import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/department_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/job_model.dart';
import 'package:altow_greenhouse_jobs/features/job_explorer/data/models/office_model.dart';
import 'package:drift/drift.dart';

import 'dart:io';

import 'package:drift/native.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'drift_database.g.dart';

class JobModelConverter extends TypeConverter<JobModel, String> {
  const JobModelConverter();
  @override
  JobModel fromSql(String fromDb) {
    return JobModel.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(JobModel value) {
    return json.encode(value.toJson());
  }
}

@DataClassName('JobDataModel')
class JobsTable extends Table {
  IntColumn get id => integer()();
  TextColumn get jobJson => text().map(const JobModelConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DepartmentDataModel')
class DepartmentTable extends Table {
  IntColumn get id => integer()();
  TextColumn get departmentJson => text()();
}

@DataClassName('OfficeDataModel')
class OfficeTable extends Table {
  IntColumn get id => integer()();
  TextColumn get officesJson => text()();
}

@DriftDatabase(tables: [
  JobsTable,
  DepartmentTable,
  OfficeTable,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /// insert multiple jobs into database
  Future<void> insertJobs({required List<JobModel> jobs}) async {
    for (var i = 0; i < jobs.length; i++) {
      into(jobsTable).insert(
        mode: InsertMode.insertOrReplace,
        JobDataModel(
          id: jobs[i].id,
          jobJson: jobs[i],
        ),
      );
    }
  }

  /// read all saved jobs from database
  Future<List<JobDataModel>> readJobs() {
    return (select(jobsTable)..orderBy([(u) => OrderingTerm.desc(u.id)])).get();
  }

  /// read single job detail
  Future<JobDataModel> getSingleJob({required int id}) {
    return (select(jobsTable)..where((j) => j.id.equals(id))).getSingle();
  }

  /// insert multiple departments into database
  Future<void> insertDepartments(
      {required List<DepartmentModel> departments}) async {
    for (var i = 0; i < departments.length; i++) {
      into(departmentTable).insert(
        DepartmentDataModel(
          id: departments[i].id,
          departmentJson: departments[i].toJson().toString(),
        ),
      );
    }
  }

  /// read all departments from database
  Future<List<DepartmentDataModel>> readDepartments() {
    return (select(departmentTable)..orderBy([(u) => OrderingTerm.desc(u.id)]))
        .get();
  }

  /// insert multiple Offices into database
  Future<void> insertOffices({required List<OfficeModel> offices}) async {
    for (var i = 0; i < offices.length; i++) {
      into(officeTable).insert(
        OfficeDataModel(
          id: offices[i].id,
          officesJson: offices[i].toJson().toString(),
        ),
      );
    }
  }

  /// read all offices from database
  Future<List<OfficeDataModel>> readOffices() {
    return (select(officeTable)..orderBy([(u) => OrderingTerm.desc(u.id)]))
        .get();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
