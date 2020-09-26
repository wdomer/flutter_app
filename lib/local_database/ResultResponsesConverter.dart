// stores preferences as strings
import 'dart:convert';

import 'package:flutter_app/local_database/responses.dart';
import 'package:moor_flutter/moor_flutter.dart';

class ResultResponsesConverter extends TypeConverter<ResultResponses, String> {
  const ResultResponsesConverter();
  @override
  ResultResponses mapToDart(String fromDb) {
    if (fromDb == null) {
      return null;
    }
    return ResultResponses.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String mapToSql(ResultResponses value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}