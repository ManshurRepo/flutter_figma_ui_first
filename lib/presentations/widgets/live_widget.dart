// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LiveWidget extends StatelessWidget {
  const LiveWidget({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 73,
      height: 73,
      child: Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Color(0xffEC5F5F), width: 3.5),
            ),
            // borderRadius: BorderRadius.circular(100), color: Colors.red,

            child: Container(
              padding: EdgeInsets.all(5),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 2.5, color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  color: Color(0xff4DC9D1),
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image.asset(
                  'assets/icons/video.png', width: 13, height: 10,
                  // width: 13,
                  // height: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
