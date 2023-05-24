import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChildDetails extends StatefulWidget {
  @override
  State<ChildDetails> createState() => _ChildDetailsState();
}

class _ChildDetailsState extends State<ChildDetails> {
  final Color backgroundColor = const Color(0xFFF3FCFF);

  final Color borderColor = Colors.blue;

  final Color buttonColor = Colors.blue;

  final TextStyle boldTextStyle = TextStyle(fontWeight: FontWeight.bold);

  bool status = false;

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
                    const SizedBox(width: 10.0),
                    FlutterSwitch(
                      width: 80.0,
                      height: 30.0,
                      valueFontSize: 16.0,
                      toggleSize: 20.0,
                      inactiveSwitchBorder: ,
                      value: status,
                      borderRadius: 30.0,
                      padding: 4.0,
                      //showOnOff: true,
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                    const SizedBox(width: 10.0),
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

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        }
        // Otherwise return null to set default track color
        // for remaining states such as when the switch is
        // hovered, focused, or disabled.
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.blue.withOpacity(0.54);
        }
        // Material color when switch is disabled.
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        // Otherwise return null to set default material color
        // for remaining states such as when the switch is
        // hovered, or focused.
        return null;
      },
    );

    return Switch(
      // This bool value toggles the switch.
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
