import 'package:flutter/material.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBar_4.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';
import 'package:mothering_app/Screens/NavBarScreens/magazine_stories.dart';
import 'package:mothering_app/Screens/NavBarScreens/playArea.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MotheringMagazineScreen_Videos extends StatefulWidget {
  @override
  State<MotheringMagazineScreen_Videos> createState() =>
      _MotheringMagazineScreen_VideosState();
}

class _MotheringMagazineScreen_VideosState
    extends State<MotheringMagazineScreen_Videos> {
  final videoUrl = 'https://youtu.be/ROizaaDphtU';

  late YoutubePlayerController _controller;

  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
  }

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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MotheringMagazineScreen_Stories()),
                        );
                      },
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
                      onPressed: null,
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
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            )
          ],
        ),
      ),
    );
  }
}
