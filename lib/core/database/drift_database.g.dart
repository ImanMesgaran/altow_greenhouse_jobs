// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class JobDataModel extends DataClass implements Insertable<JobDataModel> {
  final int id;
  final JobModel? jobJson;
  const JobDataModel({required this.id, this.jobJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || jobJson != null) {
      final converter = $JobsTableTable.$converterjobJsonn;
      map['job_json'] = Variable<String>(converter.toSql(jobJson));
    }
    return map;
  }

  JobsTableCompanion toCompanion(bool nullToAbsent) {
    return JobsTableCompanion(
      id: Value(id),
      jobJson: jobJson == null && nullToAbsent
          ? const Value.absent()
          : Value(jobJson),
    );
  }

  factory JobDataModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JobDataModel(
      id: serializer.fromJson<int>(json['id']),
      jobJson: serializer.fromJson<JobModel?>(json['jobJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jobJson': serializer.toJson<JobModel?>(jobJson),
    };
  }

  JobDataModel copyWith(
          {int? id, Value<JobModel?> jobJson = const Value.absent()}) =>
      JobDataModel(
        id: id ?? this.id,
        jobJson: jobJson.present ? jobJson.value : this.jobJson,
      );
  @override
  String toString() {
    return (StringBuffer('JobDataModel(')
          ..write('id: $id, ')
          ..write('jobJson: $jobJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, jobJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JobDataModel &&
          other.id == this.id &&
          other.jobJson == this.jobJson);
}

class JobsTableCompanion extends UpdateCompanion<JobDataModel> {
  final Value<int> id;
  final Value<JobModel?> jobJson;
  const JobsTableCompanion({
    this.id = const Value.absent(),
    this.jobJson = const Value.absent(),
  });
  JobsTableCompanion.insert({
    this.id = const Value.absent(),
    this.jobJson = const Value.absent(),
  });
  static Insertable<JobDataModel> custom({
    Expression<int>? id,
    Expression<String>? jobJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobJson != null) 'job_json': jobJson,
    });
  }

  JobsTableCompanion copyWith({Value<int>? id, Value<JobModel?>? jobJson}) {
    return JobsTableCompanion(
      id: id ?? this.id,
      jobJson: jobJson ?? this.jobJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (jobJson.present) {
      final converter = $JobsTableTable.$converterjobJsonn;
      map['job_json'] = Variable<String>(converter.toSql(jobJson.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JobsTableCompanion(')
          ..write('id: $id, ')
          ..write('jobJson: $jobJson')
          ..write(')'))
        .toString();
  }
}

class $JobsTableTable extends JobsTable
    with TableInfo<$JobsTableTable, JobDataModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JobsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _jobJsonMeta =
      const VerificationMeta('jobJson');
  @override
  late final GeneratedColumnWithTypeConverter<JobModel?, String> jobJson =
      GeneratedColumn<String>('job_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<JobModel?>($JobsTableTable.$converterjobJsonn);
  @override
  List<GeneratedColumn> get $columns => [id, jobJson];
  @override
  String get aliasedName => _alias ?? 'jobs_table';
  @override
  String get actualTableName => 'jobs_table';
  @override
  VerificationContext validateIntegrity(Insertable<JobDataModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_jobJsonMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JobDataModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JobDataModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      jobJson: $JobsTableTable.$converterjobJsonn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_json'])),
    );
  }

  @override
  $JobsTableTable createAlias(String alias) {
    return $JobsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<JobModel, String> $converterjobJson =
      const JobModelConverter();
  static TypeConverter<JobModel?, String?> $converterjobJsonn =
      NullAwareTypeConverter.wrap($converterjobJson);
}

class DepartmentDataModel extends DataClass
    implements Insertable<DepartmentDataModel> {
  final int id;
  final String departmentJson;
  const DepartmentDataModel({required this.id, required this.departmentJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['department_json'] = Variable<String>(departmentJson);
    return map;
  }

  DepartmentTableCompanion toCompanion(bool nullToAbsent) {
    return DepartmentTableCompanion(
      id: Value(id),
      departmentJson: Value(departmentJson),
    );
  }

  factory DepartmentDataModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DepartmentDataModel(
      id: serializer.fromJson<int>(json['id']),
      departmentJson: serializer.fromJson<String>(json['departmentJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'departmentJson': serializer.toJson<String>(departmentJson),
    };
  }

  DepartmentDataModel copyWith({int? id, String? departmentJson}) =>
      DepartmentDataModel(
        id: id ?? this.id,
        departmentJson: departmentJson ?? this.departmentJson,
      );
  @override
  String toString() {
    return (StringBuffer('DepartmentDataModel(')
          ..write('id: $id, ')
          ..write('departmentJson: $departmentJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, departmentJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DepartmentDataModel &&
          other.id == this.id &&
          other.departmentJson == this.departmentJson);
}

class DepartmentTableCompanion extends UpdateCompanion<DepartmentDataModel> {
  final Value<int> id;
  final Value<String> departmentJson;
  const DepartmentTableCompanion({
    this.id = const Value.absent(),
    this.departmentJson = const Value.absent(),
  });
  DepartmentTableCompanion.insert({
    required int id,
    required String departmentJson,
  })  : id = Value(id),
        departmentJson = Value(departmentJson);
  static Insertable<DepartmentDataModel> custom({
    Expression<int>? id,
    Expression<String>? departmentJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (departmentJson != null) 'department_json': departmentJson,
    });
  }

  DepartmentTableCompanion copyWith(
      {Value<int>? id, Value<String>? departmentJson}) {
    return DepartmentTableCompanion(
      id: id ?? this.id,
      departmentJson: departmentJson ?? this.departmentJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (departmentJson.present) {
      map['department_json'] = Variable<String>(departmentJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentTableCompanion(')
          ..write('id: $id, ')
          ..write('departmentJson: $departmentJson')
          ..write(')'))
        .toString();
  }
}

class $DepartmentTableTable extends DepartmentTable
    with TableInfo<$DepartmentTableTable, DepartmentDataModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DepartmentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _departmentJsonMeta =
      const VerificationMeta('departmentJson');
  @override
  late final GeneratedColumn<String> departmentJson = GeneratedColumn<String>(
      'department_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, departmentJson];
  @override
  String get aliasedName => _alias ?? 'department_table';
  @override
  String get actualTableName => 'department_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DepartmentDataModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('department_json')) {
      context.handle(
          _departmentJsonMeta,
          departmentJson.isAcceptableOrUnknown(
              data['department_json']!, _departmentJsonMeta));
    } else if (isInserting) {
      context.missing(_departmentJsonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DepartmentDataModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DepartmentDataModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      departmentJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}department_json'])!,
    );
  }

  @override
  $DepartmentTableTable createAlias(String alias) {
    return $DepartmentTableTable(attachedDatabase, alias);
  }
}

class OfficeDataModel extends DataClass implements Insertable<OfficeDataModel> {
  final int id;
  final String officesJson;
  const OfficeDataModel({required this.id, required this.officesJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['offices_json'] = Variable<String>(officesJson);
    return map;
  }

  OfficeTableCompanion toCompanion(bool nullToAbsent) {
    return OfficeTableCompanion(
      id: Value(id),
      officesJson: Value(officesJson),
    );
  }

  factory OfficeDataModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OfficeDataModel(
      id: serializer.fromJson<int>(json['id']),
      officesJson: serializer.fromJson<String>(json['officesJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'officesJson': serializer.toJson<String>(officesJson),
    };
  }

  OfficeDataModel copyWith({int? id, String? officesJson}) => OfficeDataModel(
        id: id ?? this.id,
        officesJson: officesJson ?? this.officesJson,
      );
  @override
  String toString() {
    return (StringBuffer('OfficeDataModel(')
          ..write('id: $id, ')
          ..write('officesJson: $officesJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, officesJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OfficeDataModel &&
          other.id == this.id &&
          other.officesJson == this.officesJson);
}

class OfficeTableCompanion extends UpdateCompanion<OfficeDataModel> {
  final Value<int> id;
  final Value<String> officesJson;
  const OfficeTableCompanion({
    this.id = const Value.absent(),
    this.officesJson = const Value.absent(),
  });
  OfficeTableCompanion.insert({
    required int id,
    required String officesJson,
  })  : id = Value(id),
        officesJson = Value(officesJson);
  static Insertable<OfficeDataModel> custom({
    Expression<int>? id,
    Expression<String>? officesJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (officesJson != null) 'offices_json': officesJson,
    });
  }

  OfficeTableCompanion copyWith({Value<int>? id, Value<String>? officesJson}) {
    return OfficeTableCompanion(
      id: id ?? this.id,
      officesJson: officesJson ?? this.officesJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (officesJson.present) {
      map['offices_json'] = Variable<String>(officesJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OfficeTableCompanion(')
          ..write('id: $id, ')
          ..write('officesJson: $officesJson')
          ..write(')'))
        .toString();
  }
}

class $OfficeTableTable extends OfficeTable
    with TableInfo<$OfficeTableTable, OfficeDataModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OfficeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _officesJsonMeta =
      const VerificationMeta('officesJson');
  @override
  late final GeneratedColumn<String> officesJson = GeneratedColumn<String>(
      'offices_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, officesJson];
  @override
  String get aliasedName => _alias ?? 'office_table';
  @override
  String get actualTableName => 'office_table';
  @override
  VerificationContext validateIntegrity(Insertable<OfficeDataModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('offices_json')) {
      context.handle(
          _officesJsonMeta,
          officesJson.isAcceptableOrUnknown(
              data['offices_json']!, _officesJsonMeta));
    } else if (isInserting) {
      context.missing(_officesJsonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  OfficeDataModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OfficeDataModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      officesJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}offices_json'])!,
    );
  }

  @override
  $OfficeTableTable createAlias(String alias) {
    return $OfficeTableTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $JobsTableTable jobsTable = $JobsTableTable(this);
  late final $DepartmentTableTable departmentTable =
      $DepartmentTableTable(this);
  late final $OfficeTableTable officeTable = $OfficeTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [jobsTable, departmentTable, officeTable];
}
