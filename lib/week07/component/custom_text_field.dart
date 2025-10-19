import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/week07/const/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isTime;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;

  const CustomTextField({
    required this.label,
    required this.isTime,
    required this.onSaved,
    required this.validator,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( // 2 세로로 텍스트와 텍스트 필드 배치
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600
          ),
        ),
        Expanded(
          flex: isTime ? 0 : 1, // 1
          child: TextFormField( // 1 폼 안에서 텍스트 필드를 쓸 때 사용
          
          )
        )
      ],
    );
  }
}