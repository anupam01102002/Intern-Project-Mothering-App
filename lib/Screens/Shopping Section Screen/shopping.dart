import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/deliveryLocation.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBar_1.dart';
import 'package:mothering_app/Screens/other%20Screens/item_details_screen.dart';
import '/CustomWidgets/productcard_2.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: SingleChildScrollView(
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
            Row(
              children: [
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
              ],
            ),
            Row(
              children: [
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
              ],
            ),
            Row(
              children: [
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
              ],
            ),
            Row(
              children: [
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
              ],
            ),
            Row(
              children: [
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
                ProductCard_2(
                  borderColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                            productSpecifications: const [
                              'Brand - Babyhug',
                              'Type - Sweater Set',
                              'Fabric - knit',
                              'Sleeves - Full',
                            ],
                            pincode: 362112,
                            onPressed: () {},
                            deprecatedPrice: 200,
                            itemPrice: 200,
                            itemName: 'Baby Sweater',
                            brandName: 'brandName',
                            imagePath: 'assets/images/Cloth_1.png',
                            deliveryDate: DateTime.now(),
                            discountPercentage: 37),
                      ),
                    );
                  },
                  deprecatedPrice: 200,
                  itemPrice: 200,
                  itemName: 'Baby Sweater',
                  brandName: 'brandName',
                  imagePath: 'assets/images/Cloth_1.png',
                  deliveryDate: DateTime.now(),
                  discountPercentage: 37,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
