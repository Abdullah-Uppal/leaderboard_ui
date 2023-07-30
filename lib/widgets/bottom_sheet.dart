import 'dart:ffi';

import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: Image.asset(
                          'assets/icons/settings.png',
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "How it works",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  getText([
                    (
                      "At the bottom of the page you can access the ",
                      Colors.white,
                    ),
                    (
                      "Prizes & Point system",
                      Color(0xffffc852),
                    )
                  ]),
                  getText([
                    (
                      "The points will be given as per the point system and the prizes will be given as per ranks achieved.",
                      Colors.white,
                    ),
                  ]),
                  getText([
                    (
                      "You can see several personal & public Awards & Challenges that can be unlocked in ",
                      Colors.white,
                    ),
                    (
                      '"My Status and Awards"',
                      Color(0xffffc852),
                    ),
                    (
                      "page.",
                      Colors.white,
                    ),
                  ]),
                  getText([
                    (
                      "Points will be given to unlocked Awards & challenges accepted, & successfully completed.",
                      Colors.white
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getText(List<(String, Color)> children) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.fiber_manual_record,
            color: Colors.white,
            size: 7,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                children: children
                    .map(
                      (child) => TextSpan(
                        text: child.$1,
                        style: TextStyle(color: child.$2, fontSize: 12),
                      ),
                    )
                    .toList()),
          ),
        ),
      ],
    );
  }
}
