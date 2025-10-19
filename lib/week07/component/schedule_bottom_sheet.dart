import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/week07/database/drift_database.dart';

class ScheduleBottomSheet extends StatefulWidget {
  final DateTime selectedDate;

  const ScheduleBottomSheet({
    required this.selectedDate,
    Key? key
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey(); // 폼 key 생성

  int? startTime;   // 시작 시간 저장 변수
  int? endTime;     // 종료 시간 저장 변수
  String? content;  // 일정 내용 저장 변수

  @override
  Widget build(BuildContext context) {
    // 1 키보드 높이 가져오기
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    void onSavePressed() async {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();

        await GetIt.I<LocalDatabase>().createSchedule(
          SchedulesCompanion(
            startTime: Value(startTime!),
            endTime: Value(endTime!),
            content: Value(content!),
            date: Value(widget.selectedDate),
          )
        );

        Navigator.of(context).pop();
      }
    }
  }
}