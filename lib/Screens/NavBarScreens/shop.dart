import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/child_details_container.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/productcard_1.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/Screens/Shopping%20Section%20Screen/shopping.dart';
import 'package:mothering_app/Screens/other%20Screens/addressbook.dart';
import '../../CustomWidgets/custombutton.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MotheringShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(243, 252, 255, 1),
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Material(
                elevation: 4,
                child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Color.fromRGBO(150, 150, 150, 1),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Deliver to 365420',
                              style: TextStyle(
                                color: Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        ModalDeliveryLocation(
                          playAreaName: 'playAreaName',
                          playAreaLocation: 'playAreaLocation',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const ChildDetailsContainer(),
            // Shop by Category Text
            const Subtitle(
                textColor: Color.fromRGBO(0, 124, 168, 1),
                containerHeight: 35,
                containerWidth: 8,
                enterText: 'Shop By Category'),
            // Category Buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'BOYS FASHION',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'GIRLS FASHION',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'BEST SELLER',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'SALE 50%OFF',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'ETHICAL WEAR',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                  CustomButton(
                      width: 170,
                      fillColor: Colors.white,
                      borderColor: const Color.fromRGBO(0, 124, 168, 1),
                      textColor: const Color.fromRGBO(0, 124, 168, 1),
                      buttonName: 'MOTHER\'S CHOICE',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingScreen()),
                        );
                      }),
                ],
              ),
            ),
            //New Arrival Text
            const Subtitle(
                textColor: Color.fromRGBO(0, 124, 168, 1),
                containerHeight: 35,
                containerWidth: 8,
                enterText: 'New Arrival'),
            //List View
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    ProductCard(
                      deprecatedPrice: 200,
                      itemPrice: 200,
                      itemName: 'Baby Sweater Full Sleeves',
                      brandName: 'brandName',
                      imagePath: 'assets/images/Cloth_1.png',
                    ),
                    ProductCard(
                      deprecatedPrice: 200,
                      itemPrice: 200,
                      itemName: 'Baby Sweater Full Sleeves',
                      brandName: 'brandName',
                      imagePath: 'assets/images/Cloth_1.png',
                    ),
                    ProductCard(
                      deprecatedPrice: 200,
                      itemPrice: 200,
                      itemName: 'Baby Sweater Full Sleeves',
                      brandName: 'brandName',
                      imagePath: 'assets/images/Cloth_1.png',
                    ),
                    ProductCard(
                      deprecatedPrice: 200,
                      itemPrice: 200,
                      itemName: 'Baby Sweater Full Sleeves',
                      brandName: 'brandName',
                      imagePath: 'assets/images/Cloth_1.png',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ModalDeliveryLocation extends StatelessWidget {
  final String playAreaName;
  final String playAreaLocation;

  const ModalDeliveryLocation({
    required this.playAreaName,
    required this.playAreaLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      child: Container(
        width: 50,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Color.fromRGBO(150, 150, 150, 1),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              builder: (BuildContext context) {
                return Container(
                  height: 350,
                  child: Column(
                    children: <Widget>[
                      // Choose your location Heading
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          right: 20,
                          left: 20,
                          bottom: 8,
                        ),
                        child: TextContainer_Location(),
                      ),
                      // Address Container
                      TextContainer_Address(
                        userName: 'Savan Mehta',
                        userAddress:
                            'Block no. 541, Sky Appartment, Near M.G Road, Opp. Motivihar Garden, Mumbai - 40002',
                      ),
                      // Add address container
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          right: 18,
                          left: 18,
                          bottom: 8,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(196, 196, 196, 1),
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: TextButton(
                                  onPressed: () {
                                    pushNewScreen(
                                      context,
                                      screen: AddressbookScreen(),
                                      withNavBar:
                                          false, // OPTIONAL VALUE. True by default.
                                      pageTransitionAnimation:
                                          PageTransitionAnimation.cupertino,
                                    );
                                  },
                                  child: const Text(
                                    'Manage address book',
                                    style: TextStyle(
                                      color: Color.fromRGBO(54, 102, 149, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Icons
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Color.fromRGBO(124, 219, 253, 1),
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.0,
                                        left: 8,
                                        right: 16,
                                        bottom: 8,
                                      ),
                                      child: Text(
                                        'Enter a Pincode',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(124, 219, 253, 1),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 3,
                              color: Color.fromRGBO(124, 219, 253, 1),
                            ),
                            GestureDetector(
                              onTap: () {
                                print('Tapped now');
                              },
                              child: Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.gps_fixed,
                                      color: Color.fromRGBO(124, 219, 253, 1),
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.0,
                                        left: 8,
                                        right: 16,
                                        bottom: 8,
                                      ),
                                      child: Text(
                                        'Use my current location',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(124, 219, 253, 1),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class TextContainer_Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 5,
          color: const Color.fromRGBO(124, 218, 252, 1),
        ),
        const SizedBox(
          width: 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your Location',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Text(
              'Select a delivery location to see product availability and delivery option.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class TextContainer_Address extends StatelessWidget {
  final String userName;
  final String userAddress;

  TextContainer_Address({
    required this.userName,
    required this.userAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        right: 16,
        left: 16,
        bottom: 16,
      ),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(124, 218, 252, 1),
            width: 2.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                right: 8,
                left: 8,
                bottom: 6,
              ),
              child: Text(
                userName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                right: 8,
                left: 8,
                bottom: 8,
              ),
              child: Text(
                userAddress,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                overflow: TextOverflow
                    .ellipsis, // or TextOverflow.visible for no ellipsis
                maxLines: 2, // Adjust the number of lines as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
