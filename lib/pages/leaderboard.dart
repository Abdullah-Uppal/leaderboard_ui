import 'package:flutter/material.dart';
import 'package:leaderboard_ui/icons.dart';
import 'package:leaderboard_ui/widgets/bottom_sheet.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(icon: MyIcons.arrowRight, onPressed: () {}),
          titleSpacing: 0,
          title: const Text(
            "Leaderboard",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // show bottom sheet padded from all side
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return MyBottomSheet();
                  },
                );
              },
              child: Row(
                children: [
                  const Text(
                    "How it works",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: MyIcons.settings,
                    onPressed: null,
                  ),
                ],
              ),
            ),
          ],
          expandedHeight: 438,
          backgroundColor: Colors.transparent,
          // create search bar
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff2d296b),
                        Color(0xff2a12cc),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
