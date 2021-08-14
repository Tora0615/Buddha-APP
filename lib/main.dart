import 'package:flutter/material.dart';
import 'pages/pray/pray.dart';
import 'pages/donate/donate.dart';
import 'pages/latestNews/latestNews.dart';
import 'pages/home/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/home': (BuildContext context) =>
            HomeScaffold(),
        '/latest': (BuildContext context) =>
            LatestNewsScaffold(title : "最新文章"),
        '/pray' : (BuildContext context) =>
            PrayScaffold(title : "地藏占卜"),
        '/donate' : (BuildContext context) =>
            DonateScaffold(title : "地藏供養"),
      },
      initialRoute: '/home',

    );
  }
}



