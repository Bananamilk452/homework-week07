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
