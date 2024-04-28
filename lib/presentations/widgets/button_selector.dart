// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonSelector extends StatelessWidget {
  const ButtonSelector({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: status == true ? Color(0xffEC5F5F) : Color(0xffF6F7FA),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // width: 48,
      height: 41,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: status == true ? Colors.white : Color(0xff9D9FA0)),
        ),
      ),
    );
  }
}
