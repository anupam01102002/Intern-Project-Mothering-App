import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final String enterText;
  final Color textColor;

  const Subtitle({
    required this.containerHeight,
    required this.containerWidth,
    required this.enterText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: containerHeight,
                width: containerWidth,
                decoration: BoxDecoration(
                  color: textColor,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                enterText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
