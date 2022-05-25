import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/storylistview.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(37, 39, 53, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/profile.png",
                    height: 90,
                  ),
                ),
                const Text(
                  "Mauricio Lopez",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "🖱 Diseño ui/ux y Fotografia 📷 Zihuatanejo, Mexico",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                const Text(
                  "#LifeStyle #Design #Photography #Urban #Art",
                  style: TextStyle(
                    color: Color.fromRGBO(81, 91, 212, 1),
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "735",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Post",
                          style: TextStyle(
                            color: Color.fromARGB(255, 196, 193, 193),
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "876",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(
                            color: Color.fromARGB(255, 196, 193, 193),
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "1241",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Color.fromARGB(255, 196, 193, 193),
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 165,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.1,
                            0.5,
                            1.0
                          ],
                          colors: [
                            Color.fromARGB(255, 127, 4, 180),
                            Color.fromARGB(255, 90, 24, 196),
                            Color.fromRGBO(252, 11, 123, 1),
                          ]),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Center(
                    child: Text(
                      "Seguir",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const SizedBox(
            height: 110.0,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: StoryListView(),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const SizedBox(
            width: double.infinity,
            height: 300.0,
            child: PostWidget(),
          )
        ],
      ),
    );
  }
}
