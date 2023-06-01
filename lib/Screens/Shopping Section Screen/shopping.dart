import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:mothering_app/CustomWidgets/MotheringAppBar.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/Screens/item_details_screen.dart';
import '/CustomWidgets/productcard_2.dart';
import '/profile.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MotheringAppBar(),
      drawer: MotheringAppBarDrawer(),
      body: ProductCard_2(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(
                      onPressed: () {},
                      deprecatedPrice: 200,
                      itemPrice: 200,
                      itemName: 'Baby Sweater',
                      brandName: 'brandName',
                      imagePath: 'assets/images/Cloth_1.png',
                      deliveryDate: DateTime.now(),
                      discountPercentage: 37)),
            );
          },
          deprecatedPrice: 200,
          itemPrice: 200,
          itemName: 'Baby Sweater',
          brandName: 'brandName',
          imagePath: 'assets/images/Cloth_1.png',
          deliveryDate: DateTime.now(),
          discountPercentage: 37),
    );
  }
}
