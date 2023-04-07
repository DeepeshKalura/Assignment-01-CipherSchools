import 'dart:math' show pi;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'course_column_container_widget.dart';

class CourseColumnWidget extends StatelessWidget {
  final String title;
  const CourseColumnWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  ),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: Row(
                  children: [
                    const Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(pi / 2),
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CarouselSlider(
            items: const [
              CourseCardContainerWidget(),
              CourseCardContainerWidget(),
              CourseCardContainerWidget(),
            ],
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16 / 9,
              disableCenter: false,
              autoPlayInterval: const Duration(seconds: 5),
              enableInfiniteScroll: false,
              viewportFraction: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
