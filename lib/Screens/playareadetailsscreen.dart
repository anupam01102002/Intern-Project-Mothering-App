import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/pincodecontainer.dart';
import 'package:mothering_app/Screens/NavBarScreens/playArea.dart';

class PlayAreaDetailsScreen extends StatelessWidget {
  final String playAreaName;
  final String playAreaDetails;
  final String emailId;
  final int phoneNumber;
  final List<String> criteraItems;

  const PlayAreaDetailsScreen(
      {required this.playAreaDetails,
      required this.playAreaName,
      required this.phoneNumber,
      required this.emailId,
      required this.criteraItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(255, 215, 192, 1),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(243, 149, 96, 1),
                Color.fromRGBO(251, 170, 124, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const PincodeContainer(pincode: 365420),
          Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              right: 8,
              left: 8,
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(243, 149, 97, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.27 * 0.17,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Color.fromRGBO(204, 88, 24, 1),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'New Delhi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(204, 88, 24, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                          left: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          playAreaName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Flexible(
                          child: Text(
                            playAreaDetails,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Container(
                          height: (MediaQuery.of(context).size.height -
                                  MediaQuery.of(context).padding.top) *
                              0.20,
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          left: 16,
                          bottom: 8,
                        ),
                        child: Text(
                          'Student Evaluation Criteria: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: criteraItems.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.white,
                              ),
                              title: Text(
                                criteraItems[index],
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                                height: 0); // Set spacing between list items
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    left: 8,
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: Flexible(
                                    child: Text(
                                      '+91 ' + '$phoneNumber',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    left: 8,
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: Flexible(
                                    child: Text(
                                      emailId,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Book your slot button
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 8,
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'BOOK YOUR SLOT',
                  style: TextStyle(color: Color.fromRGBO(243, 149, 97, 1)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
