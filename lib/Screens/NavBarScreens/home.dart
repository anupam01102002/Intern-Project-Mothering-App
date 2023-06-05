import 'package:flutter/material.dart';

import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/productcard_1.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';

import 'package:mothering_app/child_details.dart';


class MotheringHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChildDetails()),
                    );
                  },
                  child: const Text(
                    '+ Add Child',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
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
                        padding: EdgeInsets.all(5),
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
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
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Add_1.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Bestseller title
              const Subtitle(
                  containerHeight: 32,
                  containerWidth: 6,
                  enterText: 'Bestseller'),
              // scrollable Cards
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
                    ],
                  ),
                ),
              ),
              // adds image
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Add_2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
