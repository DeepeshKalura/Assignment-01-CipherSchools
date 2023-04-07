import 'package:flutter/material.dart';

import 'package:typing_animation/typing_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/promotion_container_widget.dart';
import '../widget/ratings_row_widget.dart';
import '../widget/rich_text_widget.dart';

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
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 10,
                  left: 20,
                  right: 20,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Welcome to ',
                      ),
                      TextSpan(
                        text: 'the Future',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' of Learning!',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 23,
                  left: 10,
                  right: 10,
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      'Start Learning by best creators for ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TypingAnimation(
                      text: 'absolutely free ',
                      textStyle: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const RatingsRowWidget(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: const Text(
                  "Start Learning Now ->",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 20,
                  bottom: MediaQuery.of(context).size.height / 20,
                ),
                child: CarouselSlider(
                  items: const [
                    PromotionContainerWidget(
                      firstText: 'Promotion 1',
                      secondText: 'Description of Promotion 1',
                      iconData: Icons.star,
                    ),
                    PromotionContainerWidget(
                      firstText: 'Promotion 2',
                      secondText: 'Description of Promotion 2',
                      iconData: Icons.local_offer,
                    ),
                    PromotionContainerWidget(
                      firstText: 'Promotion 3',
                      secondText: 'Description of Promotion 3',
                      iconData: Icons.star,
                    ),
                    PromotionContainerWidget(
                      firstText: 'First Promotion',
                      secondText: 'This is the first promotion.',
                      iconData: Icons.star,
                    ),
                    PromotionContainerWidget(
                      firstText: 'Second Promotion',
                      secondText: 'This is the second promotion.',
                      iconData: Icons.favorite,
                    ),
                    PromotionContainerWidget(
                      firstText: 'Third Promotion',
                      secondText: 'This is the third promotion.',
                      iconData: Icons.thumb_up,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    // aspectRatio: 2 / 2,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 0.6,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
              const RowRichTextWidget(
                mainString_1: '15K+',
                mainString_2: '10K+',
                bodyString_1: 'Students',
                bodyString_2: 'Cerification delivered',
              ),
              const RowRichTextWidget(
                mainString_1: '450K+',
                mainString_2: '12TB+',
                bodyString_1: 'Streaming minutes',
                bodyString_2: 'Content Streaming',
              ),
              const RowRichTextWidget(
                mainString_1: '50+',
                mainString_2: '10K+',
                bodyString_1: 'Creators',
                bodyString_2: 'Program Available',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
