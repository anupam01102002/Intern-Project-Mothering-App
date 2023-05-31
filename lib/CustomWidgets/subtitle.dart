import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final String enterText;

  const Subtitle({
    required this.containerHeight,
    required this.containerWidth,
    required this.enterText,
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
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 124, 168, 1),
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
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 124, 168, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
