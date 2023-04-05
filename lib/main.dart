import 'package:flutter/material.dart';

import 'view/widget/bottom_navigation_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const BottomNaviagotorBarWidget(),
    );
  }
}
