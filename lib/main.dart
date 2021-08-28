import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'package:buddha_app/pages/home/commonWidgetWrapper.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '地藏靈籤',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/home': (BuildContext context) =>
            HomeScaffold(),
        '/latest': (BuildContext context) =>
            CommonWidgetWrapper(index: 2,),
        '/pray' : (BuildContext context) =>
            CommonWidgetWrapper(index: 1,),
        '/donate' : (BuildContext context) =>
            CommonWidgetWrapper(index: 3,),
      },
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}



