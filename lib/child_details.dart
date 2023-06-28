import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChildDetails extends StatefulWidget {
  @override
  State<ChildDetails> createState() => _ChildDetailsState();
}

class _ChildDetailsState extends State<ChildDetails> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your child details to have',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'personalized shopping and parenting ',
              ),
              const SizedBox(height: 4.0),
              const Text(
                'experience.',
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BOY',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 176, 240, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: FlutterSwitch(
                      width: 65.0,
                      height: 25.0,
                      valueFontSize: 12.0,
                      toggleSize: 15.0,
                      value: status,
                      borderRadius: 30.0,
                      padding: 4.0,
                      showOnOff: false,
                      toggleColor: Colors.white,
                      switchBorder: Border.all(
                          color: const Color.fromRGBO(0, 176, 240, 1),
                          width: 2),
                      toggleBorder: Border.all(
                          color: const Color.fromRGBO(0, 176, 240, 1),
                          width: 3),
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'GIRL',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 176, 240, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300, // Adjust the width as needed
                    height: 40, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Date of Birth',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(150, 150, 150, 1),
                          fontSize: 16,
                        ),
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      keyboardType: TextInputType.datetime,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300, // Adjust the width as needed
                    height: 40, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Child Name',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(150, 150, 150, 1),
                          fontSize: 16,
                        ),
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35.0),
              ElevatedButton(
                onPressed: () {
                  // function
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 40.0),
                  primary: const Color.fromRGBO(0, 176, 240, 1),
                ),
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
