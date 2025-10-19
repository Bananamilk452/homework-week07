import 'package:flutter/material.dart';
import 'package:myapp/week07/const/colors.dart';

class ScheduleCard extends StatelessWidget {
  final int startTime;
  final int endTime;
  final String content;

  const ScheduleCard({
    required this.startTime,
    required this.endTime,
    required this.content,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: PRIMARY_COLOR
        ),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight( // 1 높이를 내부 위젯들의 최대 높이로 설정
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Time( // 2 시작과 종료 시간을 보여줄 위젯
                startTime: startTime,
                endTime: endTime
              ),
              SizedBox(width: 16.0),
              _Content( // 3 일정 ㅐ용을 보여줄 위젯
                content: content
              ),
              SizedBox(width: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}