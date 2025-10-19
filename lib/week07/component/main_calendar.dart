import 'package:flutter/material.dart';
import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
import 'package:table_calendar/table_calendar.dart';


class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected; // 1 날짜 선택 시 실행할 함수
  final DateTime selectedDate; // 2 선택된 날짜

  MainCalendar({
    required this.onDaySelected,
    required this.selectedDate
  });

  
}