
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  const CustomButton({
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // button's fill color
          onPrimary: Color.fromRGBO(0, 124, 168, 1), // button's text color
          elevation: 2, // button's elevation
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // border radius
          ),
          side: const BorderSide(
            color: Color.fromRGBO(0, 124, 168, 1),
          ), // button's border color
        ),
        onPressed: onPressed,
        child: Text(buttonName),
      ),
    );
  }
}
