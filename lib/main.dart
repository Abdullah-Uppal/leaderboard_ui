import 'package:flutter/material.dart';
import 'package:leaderboard_ui/pages/leaderboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leaderboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        useMaterial3: true,
      ),
      home: const Leaderboard(),
    );
  }
}