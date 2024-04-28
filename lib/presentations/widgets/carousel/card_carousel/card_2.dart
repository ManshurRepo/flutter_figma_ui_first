import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              // color: Colors.red,
              color: const Color(0xff8C8C8C).withOpacity(0.5), // Warna bayangan
              spreadRadius: 2, // Menyebar dari tengah
              blurRadius: 8, // Jumlah pelembutan bayangan
              offset: const Offset(
                  3, 4), // Perpindahan bayangan secara horizontal (ke kanan)
            ),
          ],
          image: DecorationImage(
            image: AssetImage('assets/images/bg_course4.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const SizedBox(
              height: 23,
              width: 86,
            ),
            const SizedBox(height: 140),
            Container(
              child: Text(
                'Basic skill for sketch illustration',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/stopwatch.png',
                  height: 12,
                  width: 12,
                  color: const Color(0xff8C8C8C),
                ),
                const SizedBox(width: 8),
                Text(
                  '3h 21min',
                  style: const TextStyle(
                    color: Color(0xff8C8C8C),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xff4DC9D1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      '2 lessons',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xff0082CD),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Design',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 41,
                          width: 48,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ava_3.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Samantha Roberts',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        'Product Designer',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9D9FA0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
