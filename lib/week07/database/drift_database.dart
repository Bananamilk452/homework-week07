import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:myapp/week07/model/schedule.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

// private값까지 불러올 수 있음
part 'drift_database.g.dart'; // part 파일 지정

@DriftDatabase( // 사용할 테이블 등ㄹ혹
  tables: [
    Schedules,
  ]
)

class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  // 1 Code Generation으로 생성할 클래스 상속
  Stream<List<Schedule>> watchSchedules
}