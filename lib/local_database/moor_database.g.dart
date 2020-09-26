// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Datum extends DataClass implements Insertable<Datum> {
  final int id;
  final DataModel surveys;
  Datum({@required this.id, this.surveys});
  factory Datum.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Datum(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      surveys: $DatumsTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}surveys'])),
    );
  }
  factory Datum.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Datum(
      id: serializer.fromJson<int>(json['id']),
      surveys: serializer.fromJson<DataModel>(json['surveys']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'surveys': serializer.toJson<DataModel>(surveys),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Datum>>(bool nullToAbsent) {
    return DatumsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      surveys: surveys == null && nullToAbsent
          ? const Value.absent()
          : Value(surveys),
    ) as T;
  }

  Datum copyWith({int id, DataModel surveys}) => Datum(
        id: id ?? this.id,
        surveys: surveys ?? this.surveys,
      );
  @override
  String toString() {
    return (StringBuffer('Datum(')
          ..write('id: $id, ')
          ..write('surveys: $surveys')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, surveys.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Datum && other.id == id && other.surveys == surveys);
}

class DatumsCompanion extends UpdateCompanion<Datum> {
  final Value<int> id;
  final Value<DataModel> surveys;
  const DatumsCompanion({
    this.id = const Value.absent(),
    this.surveys = const Value.absent(),
  });
  DatumsCompanion copyWith({Value<int> id, Value<DataModel> surveys}) {
    return DatumsCompanion(
      id: id ?? this.id,
      surveys: surveys ?? this.surveys,
    );
  }
}

class $DatumsTable extends Datums with TableInfo<$DatumsTable, Datum> {
  final GeneratedDatabase _db;
  final String _alias;
  $DatumsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _surveysMeta = const VerificationMeta('surveys');
  GeneratedTextColumn _surveys;
  @override
  GeneratedTextColumn get surveys => _surveys ??= _constructSurveys();
  GeneratedTextColumn _constructSurveys() {
    return GeneratedTextColumn(
      'surveys',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, surveys];
  @override
  $DatumsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'datums';
  @override
  final String actualTableName = 'datums';
  @override
  VerificationContext validateIntegrity(DatumsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    context.handle(_surveysMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Datum map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Datum.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DatumsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.surveys.present) {
      final converter = $DatumsTable.$converter0;
      map['surveys'] =
          Variable<String, StringType>(converter.mapToSql(d.surveys.value));
    }
    return map;
  }

  @override
  $DatumsTable createAlias(String alias) {
    return $DatumsTable(_db, alias);
  }

  static DataModelConverter $converter0 = const DataModelConverter();
}

class Result extends DataClass implements Insertable<Result> {
  final int id;
  final ResultResponses response;
  Result({@required this.id, this.response});
  factory Result.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Result(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      response: $ResultsTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}response'])),
    );
  }
  factory Result.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Result(
      id: serializer.fromJson<int>(json['id']),
      response: serializer.fromJson<ResultResponses>(json['response']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'response': serializer.toJson<ResultResponses>(response),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Result>>(bool nullToAbsent) {
    return ResultsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      response: response == null && nullToAbsent
          ? const Value.absent()
          : Value(response),
    ) as T;
  }

  Result copyWith({int id, ResultResponses response}) => Result(
        id: id ?? this.id,
        response: response ?? this.response,
      );
  @override
  String toString() {
    return (StringBuffer('Result(')
          ..write('id: $id, ')
          ..write('response: $response')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, response.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Result && other.id == id && other.response == response);
}

class ResultsCompanion extends UpdateCompanion<Result> {
  final Value<int> id;
  final Value<ResultResponses> response;
  const ResultsCompanion({
    this.id = const Value.absent(),
    this.response = const Value.absent(),
  });
  ResultsCompanion copyWith({Value<int> id, Value<ResultResponses> response}) {
    return ResultsCompanion(
      id: id ?? this.id,
      response: response ?? this.response,
    );
  }
}

class $ResultsTable extends Results with TableInfo<$ResultsTable, Result> {
  final GeneratedDatabase _db;
  final String _alias;
  $ResultsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _responseMeta = const VerificationMeta('response');
  GeneratedTextColumn _response;
  @override
  GeneratedTextColumn get response => _response ??= _constructResponse();
  GeneratedTextColumn _constructResponse() {
    return GeneratedTextColumn(
      'response',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, response];
  @override
  $ResultsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'results';
  @override
  final String actualTableName = 'results';
  @override
  VerificationContext validateIntegrity(ResultsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    context.handle(_responseMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Result map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Result.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ResultsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.response.present) {
      final converter = $ResultsTable.$converter0;
      map['response'] =
          Variable<String, StringType>(converter.mapToSql(d.response.value));
    }
    return map;
  }

  @override
  $ResultsTable createAlias(String alias) {
    return $ResultsTable(_db, alias);
  }

  static ResultResponsesConverter $converter0 =
      const ResultResponsesConverter();
}

class Token extends DataClass implements Insertable<Token> {
  final int id;
  final String token;
  Token({@required this.id, this.token});
  factory Token.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Token(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      token:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}token']),
    );
  }
  factory Token.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Token(
      id: serializer.fromJson<int>(json['id']),
      token: serializer.fromJson<String>(json['token']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'token': serializer.toJson<String>(token),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Token>>(bool nullToAbsent) {
    return TokensCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      token:
          token == null && nullToAbsent ? const Value.absent() : Value(token),
    ) as T;
  }

  Token copyWith({int id, String token}) => Token(
        id: id ?? this.id,
        token: token ?? this.token,
      );
  @override
  String toString() {
    return (StringBuffer('Token(')
          ..write('id: $id, ')
          ..write('token: $token')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, token.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Token && other.id == id && other.token == token);
}

class TokensCompanion extends UpdateCompanion<Token> {
  final Value<int> id;
  final Value<String> token;
  const TokensCompanion({
    this.id = const Value.absent(),
    this.token = const Value.absent(),
  });
  TokensCompanion copyWith({Value<int> id, Value<String> token}) {
    return TokensCompanion(
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }
}

class $TokensTable extends Tokens with TableInfo<$TokensTable, Token> {
  final GeneratedDatabase _db;
  final String _alias;
  $TokensTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  GeneratedTextColumn _token;
  @override
  GeneratedTextColumn get token => _token ??= _constructToken();
  GeneratedTextColumn _constructToken() {
    return GeneratedTextColumn(
      'token',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, token];
  @override
  $TokensTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tokens';
  @override
  final String actualTableName = 'tokens';
  @override
  VerificationContext validateIntegrity(TokensCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.token.present) {
      context.handle(
          _tokenMeta, token.isAcceptableValue(d.token.value, _tokenMeta));
    } else if (token.isRequired && isInserting) {
      context.missing(_tokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Token map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Token.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TokensCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.token.present) {
      map['token'] = Variable<String, StringType>(d.token.value);
    }
    return map;
  }

  @override
  $TokensTable createAlias(String alias) {
    return $TokensTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $DatumsTable _datums;
  $DatumsTable get datums => _datums ??= $DatumsTable(this);
  $ResultsTable _results;
  $ResultsTable get results => _results ??= $ResultsTable(this);
  $TokensTable _tokens;
  $TokensTable get tokens => _tokens ??= $TokensTable(this);
  @override
  List<TableInfo> get allTables => [datums, results, tokens];
}
