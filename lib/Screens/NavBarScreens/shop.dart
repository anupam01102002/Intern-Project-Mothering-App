import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/child_details_container.dart';
import 'package:mothering_app/CustomWidgets/deliveryLocation.dart';
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
                containerColor: Color.fromRGBO(0, 124, 168, 1),
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
              enterText: 'New Arrival',
              containerColor: Color.fromRGBO(0, 124, 168, 1),
            ),

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
