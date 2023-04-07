import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingsRowWidget extends StatelessWidget {
  const RatingsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/image/people.png',
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '50+',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '\nMembers',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 80,
          child: VerticalDivider(color: Colors.grey[700]),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  right: 10,
                  top: 20,
                ),
                child: Text(
                  "4.8/5",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      'assets/svg/star.svg',
                      height: 40,
                      width: 55,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0,
                    right: MediaQuery.of(context).size.height * 0,
                    child: const Text(
                      "Ratings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
