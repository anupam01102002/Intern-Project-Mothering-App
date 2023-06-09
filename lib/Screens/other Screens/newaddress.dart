import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';

class NewAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: const Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Subtitle(
            containerHeight: 20,
            containerWidth: 10,
            enterText: 'Add New Address',
            textColor: Colors.black,
            containerColor: Color.fromRGBO(124, 218, 252, 1),
          ),
        ],
      ),
    );
  }
}
