import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int postlike = 4558;
    return SizedBox(
      height: height * 90 / 100 - 270,
      width: width,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 60 / 100,
              width: width / 2,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(49, 50, 59, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 12.0,
                      bottom: 4.0,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/myprofile.png",
                          height: 45,
                          width: 45,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Taha.codes",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Ahvaz 15 min",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 180,
                        ),
                        Image.asset("assets/images/saveicon.png"),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Image.asset("assets/images/shareicon.png"),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: height * 45 / 100,
                        width: width * 90 / 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/covid.png",
                            fit: BoxFit.cover,
                            width: 290,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        left: 15.0,
                        child: Container(
                          child: const Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(252, 11, 123, 1),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 61.0,
                        child: Container(
                          child: Center(
                            child: Text(
                              "$postlike",
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ),
                          height: 23.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(103, 255, 255, 255),
                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                      ),
                      Positioned(
                        bottom: 12.0,
                        right: 20.0,
                        child: Container(
                          child: Center(
                            child: Image.asset(
                              "assets/images/chat.png",
                              height: 20,
                            ),
                          ),
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(49, 50, 49, 1),
                              borderRadius: BorderRadius.circular(22.0)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: const [
                        Text(
                          "Les gusta a danieldelax y 4,588 personas más",
                          style: TextStyle(
                            color: Color.fromRGBO(144, 144, 144, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
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
