import 'package:flutter/material.dart';
import 'package:flutter_slicing_figma_two/presentations/widgets/bottom_navbar.dart';
import 'package:flutter_slicing_figma_two/presentations/widgets/button_selector.dart';
import 'package:flutter_slicing_figma_two/presentations/widgets/carousel/main_carousel/carousel.dart';
import 'package:flutter_slicing_figma_two/presentations/widgets/live_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 75,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffF6F7FA),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/ava_1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              color: const Color(0xff4ED442),
                              border: Border.all(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hallo, Samuel!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff303030)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/icons/point.png',
                            color: const Color(0xffFCD034),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            '+1600',
                            style: TextStyle(
                                color: Color(0xffFCD034),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Points',
                            style: TextStyle(
                                color: Color(0xffFCD034), fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  child: Stack(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        child: Image.asset(
                          'assets/icons/notif.png',
                          color: const Color(0xff303030),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: const Color(0xffEC5F5F),
                              border: Border.all(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 15),
                LiveWidget(image: 'assets/images/ava_2.jpg'),
                LiveWidget(image: 'assets/images/ava_3.jpg'),
                LiveWidget(image: 'assets/images/ava_4.jpg'),
                LiveWidget(image: 'assets/images/ava_8.jpg'),
                LiveWidget(image: 'assets/images/ava_6.jpg'),
                LiveWidget(image: 'assets/images/ava_7.jpg'),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030)),
                ),
                SizedBox(width: 5),
                Text(
                  'course of this week',
                  style: TextStyle(
                      color: Color(0xff303030),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: const Row(
                children: [
                  ButtonSelector(
                    title: 'All',
                    status: true,
                  ),
                  ButtonSelector(
                    title: 'UI-UX',
                    status: false,
                  ),
                  ButtonSelector(
                    title: 'Illustration',
                    status: false,
                  ),
                  ButtonSelector(
                    title: '3D Animation',
                    status: false,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Car(),
        ],
      ),
      bottomNavigationBar: MyBottomNavbar(),
    );
  }
}
