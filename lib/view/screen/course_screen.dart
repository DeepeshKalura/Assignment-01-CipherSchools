import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // TODO: Making Exactly like course screen Shown in ClipherSchool
        appBar: AppBar(
          title: const Text('ClipherSchool'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                // TODO: Making Exactly like course screen Shown in ClipherSchool and with auto changing feature
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Row(
              // TODO: Complete this Row
              children: [
                const Text("Recommended Courses"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Popular >'),
                ),
              ],
            ),
            Row(
              // TODO: Complete this Row
              children: [
                const Text("Latest Courses"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Popular >'),
                ),
              ],
            ),
            Row(
              // TODO: Complete this Row
              children: [
                const Text("Popular Categories"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Popular >'),
                ),
              ],
            ),
            Row(
              // TODO: Complete this Row
              children: [
                const Text('All Courses'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Popular >'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
