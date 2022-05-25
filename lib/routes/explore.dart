import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/exploarcarts.dart';
import 'package:instagram_clone/widgets/explorsearch.dart';

class Exploer extends StatelessWidget {
  @override
  List myposts = [
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
    "assets/images/covid.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 110,
            child: ExplorCarts(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ExplorSearch(),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 270,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              ),
              itemCount: myposts.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset(
                    myposts[index].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
