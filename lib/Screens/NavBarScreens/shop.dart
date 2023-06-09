import 'package:flutter/material.dart';

import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/productcard_1.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/Screens/Shopping%20Section%20Screen/shopping.dart';
import '../../CustomWidgets/custombutton.dart';

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
            Material(
              elevation: 4,
              child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
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
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromRGBO(150, 150, 150, 1),
                          ),
                          onPressed: () {
                            // Add your logic for handling dropdown button press
                          },
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                height: 25,
                                width: 4,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8.0),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Ideal Height',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '80.2 - 95.2 cm',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 4,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Ideal Height',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '80.2 - 95.2 cm',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Aayan is 3 Years, 2 Month Old',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 25,
                          width: 95,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                          ),
                          child: const Text(
                            '26 Months',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
