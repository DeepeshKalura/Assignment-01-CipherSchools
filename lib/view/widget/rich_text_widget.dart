import 'package:flutter/material.dart';

class RowRichTextWidget extends StatelessWidget {
  final String mainString_1;
  final String mainString_2;
  final String bodyString_1;
  final String bodyString_2;

  const RowRichTextWidget({
    Key? key,
    required this.mainString_1,
    required this.mainString_2,
    required this.bodyString_1,
    required this.bodyString_2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            // flex: 1,
            fit: FlexFit.tight,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: mainString_1,
                    style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  TextSpan(
                    text: '\n$bodyString_1',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            // flex: 1,
            fit: FlexFit.tight,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: mainString_2,
                    style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                  TextSpan(
                    text: '\n$bodyString_2',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
