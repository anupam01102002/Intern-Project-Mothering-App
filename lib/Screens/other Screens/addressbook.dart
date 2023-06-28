import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class AddressbookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: Column(
        children: [
          AddressDetailsContainer(
            uesrName: 'uesrName',
            blockNo: 'blockNo',
            pincode: 'pincode',
            cityName: 'cityName',
            landmarkName: 'landmarkName',
            streetAddress: 'streetAddress',
            phoneNumber: 'phoneNumber',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 4,
              left: 4,
              bottom: 8,
            ),
            child: Container(
              width: double.infinity,
              height: 60,
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
                        // pushNewScreen(
                        //   context,
                        //   screen: AddressbookScreen(),
                        //   withNavBar: false, // OPTIONAL VALUE. True by default.
                        //   pageTransitionAnimation:
                        //       PageTransitionAnimation.cupertino,
                        // );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                          Text(
                            'Add new Address',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddressTagContainer extends StatelessWidget {
  final String tagName;

  AddressTagContainer({
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6),
        child: Text(
          tagName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class AddressDetailsContainer extends StatelessWidget {
  final String uesrName;
  final String blockNo;
  final String pincode;
  final String cityName;
  final String landmarkName;
  final String streetAddress;
  final String phoneNumber;

  AddressDetailsContainer({
    required this.uesrName,
    required this.blockNo,
    required this.pincode,
    required this.cityName,
    required this.landmarkName,
    required this.streetAddress,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              uesrName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              phoneNumber,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              blockNo,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              streetAddress,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              landmarkName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              cityName + ' - ' + pincode,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
