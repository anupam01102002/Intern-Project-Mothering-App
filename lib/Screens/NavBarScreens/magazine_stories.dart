import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBar_4.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/Screens/NavBarScreens/playArea.dart';

class MotheringMagazineScreen_stories_stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: motheringAppBar_4(),
      drawer: MotheringAppBarDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: const BorderSide(
                              color: Colors.blue), // Set border color to blue
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 40.0),
                        primary: Colors.white, // Set button color to white
                      ),
                      child: const Text(
                        'Stories',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue, // Set text color to blue
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: const BorderSide(
                              color: Colors.blue), // Set border color to blue
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 40.0),
                        primary: Colors.white, // Set button color to white
                      ),
                      child: const Text(
                        'Videos',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue, // Set text color to blue
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/Magazine_1.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Subtitle(
                containerHeight: 40,
                containerWidth: 8,
                enterText: 'Spotlight',
                textColor: Color.fromRGBO(0, 124, 168, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Container(
                color: const Color.fromRGBO(235, 235, 235, 1),
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.40,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MagazineSpotlightContainer(
                        SpotlightDetails:
                            'Activities that will wear down your high powered Toddler',
                        SpotlightTitle: 'Toddler',
                        imageUrl: 'assets/images/Toddler_1.png',
                      ),
                      MagazineSpotlightContainer(
                        SpotlightDetails:
                            'Activities that will wear down your high powered Toddler',
                        SpotlightTitle: 'Toddler',
                        imageUrl: 'assets/images/Toddler_1.png',
                      ),
                      MagazineSpotlightContainer(
                        SpotlightDetails:
                            'Activities that will wear down your high powered Toddler',
                        SpotlightTitle: 'Toddler',
                        imageUrl: 'assets/images/Toddler_1.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MagazineStoriesContainer(
              imageUrl: 'assets/images/Toddler_1.png',
              StoryDetails:
                  'Activities that will wear down your high powered Toddler',
              StoryTitle: 'Toddler',
            ),
            MagazineStoriesContainer(
              imageUrl: 'assets/images/Toddler_1.png',
              StoryDetails:
                  'Activities that will wear down your high powered Toddler',
              StoryTitle: 'Toddler',
            ),
            MagazineStoriesContainer(
              imageUrl: 'assets/images/Toddler_1.png',
              StoryDetails:
                  'Activities that will wear down your high powered Toddler',
              StoryTitle: 'Toddler',
            ),
            MagazineStoriesContainer(
              imageUrl: 'assets/images/Toddler_1.png',
              StoryDetails:
                  'Activities that will wear down your high powered Toddler',
              StoryTitle: 'Toddler',
            ),
            Container(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

class MagazineSpotlightContainer extends StatelessWidget {
  final String imageUrl;
  final String SpotlightTitle;
  final String SpotlightDetails;
  final double borderRadius;

  MagazineSpotlightContainer({
    required this.imageUrl,
    required this.SpotlightDetails,
    required this.SpotlightTitle,
    this.borderRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
      child: Column(
        children: [
          Container(
            width: 240,
            height: 110,
            child: ClipRRect(
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 240,
            child: ClipRRect(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    SpotlightTitle,
                    style: const TextStyle(
                        color: Color.fromRGBO(130, 212, 249, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  SpotlightDetails,
                  style: const TextStyle(),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Read More',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 151, 219, 1),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class MagazineStoriesContainer extends StatelessWidget {
  final String imageUrl;
  final String StoryTitle;
  final String StoryDetails;
  final double borderRadius;

  MagazineStoriesContainer({
    required this.imageUrl,
    required this.StoryDetails,
    required this.StoryTitle,
    this.borderRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 110,
              child: ClipRRect(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 80,
                  color: const Color.fromRGBO(34, 200, 244, 1),
                  child: Center(
                    child: Text(
                      StoryTitle,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  StoryDetails,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 30,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Mothering.in',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '3 days Ago | 1220 views',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
