import 'package:drift/drift.dart' hide Column;
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

    String? timeValidator(String? val) { // 1 시간 검증 함수
      if (val == null) {
        return '값을 입력해주세요';
      }

      int? number;

      try {
        number = int.parse(val);
      } catch (e) {
        return '숫자를 입력해주세요';
      }

      if (number < 0 || number > 24) {
        return '0시부터 24시 사이를 입력해주세요';
      }

      return null;
    }

    String? contentValidator(String? val) { // 2 내용 검증 함수
      if (val == null || val.length == 0) {
        return '값을 입력해주세요';
      }

      return null;
    }

    return Form(
      key: formKey,
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height / 2 + bottomInset,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: bottomInset),
            child: Column(
              children: [
                Row(

                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}