import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widget/course_column_container_widget.dart';
import '../widget/course_column_widget.dart';
import '../widget/course_container_widget.dart';
import '../widget/myappbar_widget.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  final List<Widget> courseContainerList = [
    const CoursesContainerWidget(),
    const CoursesContainerWidget(),
    const CoursesContainerWidget(),
    const CoursesContainerWidget()
  ];

  final List<Color> _indicatorColors = [
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: MediaQuery.of(context).size.height * 0.52,
                      autoPlayInterval: const Duration(seconds: 5),
                      enableInfiniteScroll: false,
                      viewportFraction: 1.0,
                      onPageChanged: (index, _) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: courseContainerList,
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.07,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _indicatorColors.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: index == _currentIndex
                                ? _indicatorColors[_currentIndex]
                                : Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const CourseColumnWidget(title: "Recommended Courses"),
              const CourseColumnWidget(title: "Latest Videos"),
              const CourseColumnWidget(title: "Popular Categories"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: Text(
                  'All Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 500,
                ),
                child: GridView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CourseCardContainerWidget();
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
