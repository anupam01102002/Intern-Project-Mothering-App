import 'package:flutter/material.dart';
import 'package:mothering_app/otp.dart';
import './register.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/Login-Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(124, 218, 252, 1),
      body: Column(
        children: [
          const SizedBox(height: 100.0),
          Image.asset(
            'assets/images/Mothering_logo.png',
            width: 80.0,
            height: 80.0,
          ),
          const SizedBox(height: 50.0),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Mobile Number',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(16.0),
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtpScreen()),
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
              'Send OTP',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Image.asset(
            'assets/images/OR_dashed_line.png',
            width: 500,
            height: 50.0,
          ),
          const SizedBox(height: 5.0),
          ElevatedButton.icon(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              primary: Colors.white,
            ),
            icon: Image.asset(
              'assets/images/Google_logo.png',
              width: 24.0,
              height: 24.0,
            ),
            label: const Text(
              'Continue with Google',
              style: TextStyle(
                color: Colors.blue,
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
    );
  }
}
