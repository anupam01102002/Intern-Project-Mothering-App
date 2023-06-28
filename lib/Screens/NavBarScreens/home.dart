import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/child_details_container.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/productcard_1.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/child_details.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class MotheringHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
                    pushNewScreen(
                      context,
                      screen: ChildDetails(),
                      withNavBar: true,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
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
              const ChildDetailsContainer(),
              ImageSlideshow(
                /// Width of the [ImageSlideshow].
                width: double.infinity,

                /// Height of the [ImageSlideshow].
                height: 300,

                /// The page to show when first creating the [ImageSlideshow].
                initialPage: 0,

                /// The color to paint the indicator.
                indicatorColor: Colors.blue,

                /// The color to paint behind th indicator.
                indicatorBackgroundColor: Colors.grey,

                /// Called whenever the page in the center of the viewport changes.
                onPageChanged: (value) {
                  print('Page changed: $value');
                },

                /// Auto scroll interval.
                /// Do not auto scroll with null or 0.
                autoPlayInterval: 6000,

                /// Loops back to first slide.
                isLoop: true,

                /// The widgets to display in the [ImageSlideshow].
                /// Add the sample image file into the images folder
                children: [
                  Image.asset(
                    'assets/images/Add_1.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/Wow_Mom_2.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/post_1.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              // Bestseller title
              const Subtitle(
                  textColor: Color.fromRGBO(0, 124, 168, 1),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Material(
                  elevation: 5,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 230,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(124, 219, 253, 1),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Mothering ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'Browse by Feature',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(128, 128, 128, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                // Handle button press
                              },
                              iconSize: 60,
                              icon: Image.asset(
                                'assets/images/Home_icon_1.png',
                                height: 95,
                                width: 95,
                                fit: BoxFit
                                    .cover, // Stretch the image to fit the specified size
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle button press
                              },
                              iconSize: 60,
                              icon: Image.asset(
                                'assets/images/Home_icon_3.png',
                                height: 95,
                                width: 95,
                                fit: BoxFit
                                    .cover, // Stretch the image to fit the specified size
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle button press
                              },
                              iconSize: 60,
                              icon: Image.asset(
                                'assets/images/Home_icon_2.png',
                                height: 95,
                                width: 95,
                                fit: BoxFit
                                    .cover, // Stretch the image to fit the specified size
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset:
                            Offset(0, 2), // Offset in the vertical direction
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        'TRENDING STORES',
                        style: TextStyle(color: Color.fromRGBO(0, 124, 168, 1)),
                      ),
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
                      0.40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AdvertisementContainer_2(
                          imageUrl: 'assets/images/Wow_Mom_2.png',
                        ),
                        AdvertisementContainer_2(
                          imageUrl: 'assets/images/Wow_Mom_2.png',
                        ),
                        AdvertisementContainer_2(
                          imageUrl: 'assets/images/Wow_Mom_2.png',
                        ),
                        AdvertisementContainer_2(
                          imageUrl: 'assets/images/Wow_Mom_2.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdvertisementContainer_2 extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;

  AdvertisementContainer_2({required this.imageUrl, this.borderRadius = 20.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
