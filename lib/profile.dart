import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String _selectedOption = 'MOM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 13,
              backgroundColor: Colors.white,
              // Add profile icon image here
              // backgroundImage: AssetImage('assets/profile_image.png'),
              // Use the above line if you have a custom profile image
              child: Icon(
                Icons.person,
                size: 20,
                color: Color.fromRGBO(124, 218, 252, 1),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(124, 218, 252, 1),
        actions: <Widget>[
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -3, end: -1),
            badgeContent: Text('3'),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -3, end: -1),
            badgeContent: Text('3'),
            child: IconButton(
              icon: Icon(Icons.notifications_outlined),
              selectedIcon: Icon(Icons.notifications),
              onPressed: () {
                // Add your notifications icon functionality here
              },
            ),
          ),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -3, end: -1),
            badgeContent: Text('3'),
            child: IconButton(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite),
              onPressed: () {
                // Add your favorites icon functionality here
              },
            ),
          ),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -3, end: -1),
            badgeContent: Text('3'),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your cart icon functionality here
              },
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(227, 248, 255, 1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width * 0.08),
                  height: (MediaQuery.of(context).size.height * 0.03),
                  color: Color.fromRGBO(124, 219, 253, 1),
                ),
                const SizedBox(width: 10),
                const Text(
                  'My Profile',
                  style: TextStyle(
                    color: Color.fromRGBO(124, 219, 253, 1),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.04),
            Stack(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromRGBO(177, 177, 177, 1)),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Profile_image.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: Color.fromRGBO(177, 177, 177, 1),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 20,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        // Add your camera button functionality here
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.04),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 60.0),
                        child: const Text(
                          'Enter Your Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Color.fromRGBO(0, 124, 168, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.008),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 320, // Adjust the width as needed
                      height: 30, // Adjust the height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: Colors.white),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Savan Mehta',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.all(10.0),
                        ),
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "MOM",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "MOM",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "DAD",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "DAD",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.001),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "I AM EXPECTING ANOTHER CHILD",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "I AM EXPECTING ANOTHER CHILD",
                        style: TextStyle(fontSize: 11),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.001),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "GUARDIAN",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "GUARDIAN",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "EXPECTING",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "EXPECTING",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.02),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(196, 196, 196, 1),
                        ),
                        child: Radio(
                          value: "TRYING TO CONCEIVE",
                          groupValue: _selectedOption,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromRGBO(124, 219, 253, 1)),
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "TRYING TO CONCEIVE",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Function
            //   },
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //     ),
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            //     primary: const Color.fromRGBO(0, 176, 240, 1),
            //   ),
            //   child: const Text(
            //     'CONTINUE',
            //     style: TextStyle(
            //       fontSize: 16,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}