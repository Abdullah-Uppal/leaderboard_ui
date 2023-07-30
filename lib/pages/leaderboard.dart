import 'package:flutter/material.dart';
import 'package:leaderboard_ui/icons.dart';
import 'package:leaderboard_ui/widgets/bottom_sheet.dart';
import 'package:leaderboard_ui/widgets/top_three.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(icon: MyIcons.arrowRight, onPressed: () {}),
            titleSpacing: 0,
            title: const Text(
              "Leader Board",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  // show bottom sheet padded from all side
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const MyBottomSheet();
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
            expandedHeight: 468,
            pinned: true,
            // collapsedHeight: 468,
            backgroundColor: Color(0xff2c257b),
            // create search bar
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 428,
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
                  Positioned(
                    top: 75,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1e0082),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.all(8),
                      child: TabBar(
                        controller: TabController(length: 3, vsync: this),
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.black,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        unselectedLabelColor: Colors.white.withOpacity(0.7),
                        tabs: const [
                          Tab(
                            height: 30,
                            child: Text(
                              "This Week",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Tab(
                            height: 30,
                            child: Text(
                              "This Month",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Tab(
                            height: 30,
                            child: Text(
                              "Last Month",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 150,
                    left: 0,
                    right: 0,
                    child: TopThree(),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverList.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfffaf6ff),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "4",
                                style: TextStyle(fontSize: 18),
                              ),
                              Image.asset(
                                "assets/icons/up-green-filled.png",
                                height: 9.24,
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/Person1.png",
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "Shikha Rawat",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Text(
                        "5960",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
