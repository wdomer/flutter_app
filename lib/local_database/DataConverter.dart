// stores preferences as strings
import 'dart:convert';

import 'package:flutter_app/local_database/data.dart';
import 'package:moor_flutter/moor_flutter.dart';

class DataModelConverter extends TypeConverter<DataModel, String> {
  const DataModelConverter();
  @override
  DataModel mapToDart(String fromDb) {
    if (fromDb == null) {
      return null;
    }
    return DataModel.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String mapToSql(DataModel value) {
    if (value == null) {
      return null;
    }

    return json.encode(value.toJson());
  }
}