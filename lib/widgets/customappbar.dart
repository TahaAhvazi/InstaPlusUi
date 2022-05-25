import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/add.png'),
        Image.asset('assets/images/Instagramlogo.png'),
        Stack(
          children: [
            Image.asset('assets/images/chat.png'),
            Container(
              height: 12.0,
              width: 12.0,
              child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color.fromRGBO(221, 42, 121, 1),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
