import 'package:flutter/material.dart';
import 'register.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const defaultPinTheme = PinTheme(
      width: 48,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(0, 0, 0, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: BorderDirectional(
            bottom: BorderSide(width: 2, color: Colors.white)),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(124, 218, 252, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.17),
            Image.asset(
              'assets/images/Mothering_logo.png',
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.06),
            const Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.04),
            Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.05),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                primary: const Color.fromRGBO(0, 176, 240, 1),
              ),
              child: const Text(
                'CONTINUE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add your logic here
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.transparent,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(
                'RESEND OTP',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Image.asset(
                    'assets/images/Mothering_Text.png',
                    width: 200.0,
                    height: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
