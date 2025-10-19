import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/week05/calendar_scheduler/component/main_calendar.dart';
import 'package:myapp/week05/calendar_scheduler/component/schedule_bottom_sheet.dart';
import 'package:myapp/week05/calendar_scheduler/component/schedule_card.dart';
import 'package:myapp/week05/calendar_scheduler/component/today_banner.dart';
import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
import 'package:myapp/week05/calendar_scheduler/database/drift_database.dart';

class HomeScreen extends StatefulWidget {
  // 1 StatelessWidget에서 StatefulWidget으로 전환
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc( // 2 선택된 날짜를 관리할 변수
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( // 1 새 일정 버튼
        backgroundColor: PRIMARY_COLOR,
        onPressed: () {
          showModalBottomSheet( // 2 BottomSheet 열기
            context: context,
            isDismissible: true, // 3 배경 탭했을 때 BottomSheet 닫기
            builder: (_) => ScheduleBottomSheet(
              selectedDate: selectedDate, // 선택된 날짜 (selectedDate) 넘겨주기
            ),
            // BottomSheet의 높이를 화면 최대 높이로
            // 정의하고 스크롤 가능하게 변경
            isScrollControlled: true,
          );
        },
        