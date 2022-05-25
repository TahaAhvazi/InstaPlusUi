import 'package:flutter/material.dart';

class ExplorCarts extends StatelessWidget {
  const ExplorCarts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.2,
                        0.4,
                        0.6,
                        0.8,
                        1.0
                      ],
                      colors: [
                        Color.fromRGBO(55, 113, 200, 1),
                        Color.fromARGB(255, 90, 24, 196),
                        Color.fromRGBO(252, 11, 123, 1),
                        Color.fromARGB(255, 245, 85, 10),
                        Color.fromARGB(255, 228, 195, 9),
                        Color.fromARGB(255, 240, 225, 12),
                      ]),
                  borderRadius: BorderRadius.circular(20.0)),
              width: 90.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Image.asset("assets/images/igtv.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "IGTV",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(81, 91, 212, 1),
                  borderRadius: BorderRadius.circular(20.0)),
              width: 90.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Image.asset("assets/images/shop.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "TIENDA",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(129, 52, 175, 1),
                  borderRadius: BorderRadius.circular(20.0)),
              width: 90.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Image.asset("assets/images/plane.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "VIAJES",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(221, 42, 123, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: 90.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Image.asset("assets/images/fast.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "FITNESS",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
