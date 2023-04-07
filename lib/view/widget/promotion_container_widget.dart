import 'package:flutter/material.dart';

class PromotionContainerWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final IconData iconData;

  const PromotionContainerWidget({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 58, 66, 1),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(53, 58, 66, 1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    iconData,
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                color: Colors.orange,
                padding: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                child: const Text(
                  'FREE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.width * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.005,
            ),
            child: Text(
              firstText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Text(
              secondText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
