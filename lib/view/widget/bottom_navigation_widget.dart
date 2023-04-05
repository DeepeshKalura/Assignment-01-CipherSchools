import 'package:flutter/material.dart';

import '../screen/course_screen.dart';
import '../screen/home_screen.dart';

class BottomNaviagotorBarWidget extends StatefulWidget {
  const BottomNaviagotorBarWidget({super.key});

  @override
  State<BottomNaviagotorBarWidget> createState() =>
      _BottomNaviagotorBarWidgetState();
}

class _BottomNaviagotorBarWidgetState extends State<BottomNaviagotorBarWidget> {
  final listOfScreens = [
    const HomeScreen(),
    const CourseScreen(),
  ];

  var selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedItem,
      elevation: 1,
      onTap: (index) {
        setState(() {
          selectedItem = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Courses',
        ),
      ],
    );
  }
}
