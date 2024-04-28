import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../card_carousel/card_1.dart';
import '../card_carousel/card_2.dart';

class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<Car> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  enlargeFactor: 0.08,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  height: 360,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList.asMap().entries.map((entry) {
                  final int index = entry.key;
                  Widget card = const CardOne();
                  if (index == 0) {
                    card = const CardOne();
                  } else if (index == 1) {
                    card = const CardTwo();
                  }
                  return card;
                }).toList(),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  final int index = entry.key;
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(index),
                    child: Container(
                      width: 16.0,
                      height: 6.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: _current == index
                            ? const Color(0xffEC5F5F)
                            : const Color(0xffEEEEEE),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
