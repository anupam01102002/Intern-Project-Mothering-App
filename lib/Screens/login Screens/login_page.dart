import 'package:flutter/material.dart';
import './otp.dart';

// import './register.dart';
class LoginPage extends StatelessWidget {
  static const routeName = '/Login-Page';

  @override
  Widget build(BuildContext context) {
    TextField phoneNumber;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(124, 218, 252, 1),
      body: Column(
        children: [
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.2),
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
            'LOGIN',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.04),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: phoneNumber = const TextField(
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
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.03),
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
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.01),
          Image.asset(
            'assets/images/OR_dashed_line.png',
            width: 500,
            height: 50.0,
          ),
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.01),
          ElevatedButton.icon(
            onPressed: () {},
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
