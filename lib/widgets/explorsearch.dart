import 'package:flutter/material.dart';

class ExplorSearch extends StatelessWidget {
  const ExplorSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color.fromRGBO(49, 50, 59, 1)),
        child: Row(
          children: [
            const SizedBox(width: 15.0),
            Image.asset("assets/images/unselectedsearchicon.png"),
            const SizedBox(width: 20.0),
            const Text(
              "Buscar",
              style: TextStyle(
                color: Color.fromRGBO(213, 213, 213, 1),
              ),
            ),
            const SizedBox(width: 240.0),
            Image.asset("assets/images/qrcode.png"),
          ],
        ),
      ),
    );
  }
}
