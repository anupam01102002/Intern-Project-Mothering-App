import 'package:flutter/material.dart';

class ChildDetails extends StatelessWidget {
  final Color backgroundColor = const Color(0xFFF3FCFF);
  final Color borderColor = Colors.blue;
  final Color buttonColor = Colors.blue;
  final TextStyle boldTextStyle = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your child details to have',
                  style: boldTextStyle,
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
                          fontWeight: FontWeight.normal),
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {
                        value = true;
                      },
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
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.lightBlue,
            selectedItemColor: Colors.lightBlue,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Play_area.png',
                  width: 32,
                  height: 32,
                ),
                label: 'Book',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/MSocial_logo.png',
                  width: 32,
                  height: 32,
                ),
                label: 'Social',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Magazine',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
