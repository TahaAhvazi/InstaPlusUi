import 'package:flutter/material.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Stack(
          children: [
            // This is the white circular background !
            Image.asset(
              "assets/images/backgroundstoryone.png",
              height: 70.0,
            ),
            // This is my profile
            Positioned(
              top: 2.40,
              right: 2.35,
              child: Image.asset("assets/images/myprofile.png"),
            ),
            Positioned(
              bottom: 10.0,
              left: 25.0,
              child: Image.asset("assets/images/addstory.png"),
            ),
            const Positioned(
              bottom: 12.0,
              left: 27.0,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Stack(
          children: [
            Image.asset("assets/images/storybackgroundtwo.png"),
            Positioned(
              top: 3.0,
              left: 2.0,
              child: Image.asset("assets/images/boyprofile.png"),
            ),
            const Positioned(
              bottom: 0.0,
              child: Text(
                "John.codes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Stack(
          children: [
            Image.asset("assets/images/storybackgroundtwo.png"),
            Positioned(
              top: 3.0,
              left: 2.0,
              child: Image.asset("assets/images/boyprofile.png"),
            ),
            const Positioned(
              bottom: 0.0,
              child: Text(
                "John.codes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Stack(
          children: [
            Image.asset("assets/images/storybackgroundtwo.png"),
            Positioned(
              top: 3.0,
              left: 2.0,
              child: Image.asset("assets/images/girlprofile.png"),
            ),
            const Positioned(
              bottom: 0.0,
              child: Text(
                "text.codes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Stack(
          children: [
            Image.asset("assets/images/storybackgroundtwo.png"),
            Positioned(
              top: 3.0,
              left: 2.0,
              child: Image.asset("assets/images/boyprofile.png"),
            ),
            const Positioned(
              bottom: 0.0,
              child: Text(
                "John.codes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Stack(
          children: [
            Image.asset("assets/images/storybackgroundtwo.png"),
            Positioned(
              top: 3.0,
              left: 2.0,
              child: Image.asset("assets/images/girlprofile.png"),
            ),
            const Positioned(
              bottom: 0.0,
              child: Text(
                "John.codes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
