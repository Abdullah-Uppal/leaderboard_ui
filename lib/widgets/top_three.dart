import 'package:flutter/material.dart';

class TopThree extends StatelessWidget {
  const TopThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "2",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Image.asset(
              'assets/icons/down-red-filled.png',
              height: 7,
            ),
            SizedBox(
              height: 6,
            ),
            Image.asset(
              "assets/images/Person2.png",
              height: 89,
            ),
            Text(
              "7260",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "Natasha chowdary",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              "assets/icons/crown.png",
              height: 35.35,
            ),
            Image.asset(
              "assets/images/Person1.png",
              height: 150,
            ),
            Text(
              "8370",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "Raja reddy",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "3",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Image.asset(
              'assets/icons/up-green-filled.png',
              height: 7,
            ),
            SizedBox(
              height: 6,
            ),
            Image.asset(
              "assets/images/Person3.png",
              height: 89,
            ),
            Text(
              "6260",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "Samvibhan Singh",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }
}
