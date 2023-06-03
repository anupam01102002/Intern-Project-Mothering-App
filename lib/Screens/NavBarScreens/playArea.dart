import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/custombutton.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBar.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/Screens/Shopping%20Section%20Screen/shopping.dart';

class MotheringPlayAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(243, 252, 255, 1),
      appBar: MotheringAppBar(
        
      ),
      drawer: MotheringAppBarDrawer(),
      body: Center(
        child: Column(
          children: [
            // Delivery pincode Container
            Material(
              elevation: 4,
              child: Container(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.05,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
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
                ),
              ),
            ),
            //scrollable Row
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.25,
              color: Color.fromRGBO(206, 217, 255, 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AdvertisementContainer(
                      imageUrl: 'assets/images/Add_1.png',
                    ),
                    AdvertisementContainer(
                      imageUrl: 'assets/images/Add_1.png',
                    ),
                    AdvertisementContainer(
                      imageUrl: 'assets/images/Add_1.png',
                    ),
                    AdvertisementContainer(
                      imageUrl: 'assets/images/Add_1.png',
                    ),
                    // Add more containers here
                  ],
                ),
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.58,
              color: Color.fromRGBO(243, 149, 97, 1),
            )
          ],
        ),
      ),
    );
  }
}

class AdvertisementContainer extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;

  AdvertisementContainer({required this.imageUrl, this.borderRadius = 10.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
