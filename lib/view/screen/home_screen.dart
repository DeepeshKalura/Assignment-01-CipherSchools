import 'package:flutter/material.dart';

import 'package:typing_animation/typing_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'assets/logo/Cipherschools_icon.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  'ClipherSchool',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  'assets/svg/drawer_icon.svg',
                ),
              ),
              onPressed: () {},
            ),
          ],
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // TODO: Cloning Text and animation remains  make a package
              const Text(
                'Welcome to the Future of Learning!',
              ),
              const Text(
                'Start Learning by best creators for absolutely free!',
              ),
              Row(
                children: [
                  Row(
                    children: [
                      // TODO: Adding Images exactly and make a pakage
                      const CircleAvatar(),
                      const CircleAvatar(),
                      const CircleAvatar(),
                      Column(
                        children: const [
                          Text("50+"),
                          Text("Mentors"),
                        ],
                      ),
                      Column(
                        children: [
                          // TODO: Adding rating in svg file and cloning look remains
                          const Text("4.8/5"),
                          Row(
                            children: const [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Text("Ratings"),
                            ],
                          ),
                          // TODO: Cloning Look
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Start Learning Now ->",
                            ),
                          ),
                          // TODO: No package required just make animated crolling looks
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.black,
                          ),
                          Row(
                            // TODO: Excactly copying look
                            children: const [
                              Text("15K +"),
                              Text("Students"),
                            ],
                          ),
                          // TODO: Can made a package for this half skill
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
