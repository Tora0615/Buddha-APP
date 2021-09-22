import 'package:flutter/material.dart';
import 'pages/home/home.dart';
import 'package:buddha_app/deprecated/commonWidgetWrapper.dart';
import 'package:buddha_app/pages/home/bottomNavigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(1.0, 1.3);  // 兩種縮放倍率
        return MediaQuery(
          child: child!,  //特殊用法，看 readme
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale), //限制文字大小縮放倍率，有scale兩種
        );
      },
      title: '地藏靈籤',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // routes: {
      //   '/home': (BuildContext context) =>
      //       HomeScaffold(),
      //   '/latest': (BuildContext context) =>
      //       CommonWidgetWrapper(index: 2,),
      //   '/pray' : (BuildContext context) =>
      //       CommonWidgetWrapper(index: 1,),
      //   '/donate' : (BuildContext context) =>
      //       CommonWidgetWrapper(index: 3,),
      // },
      routes: {
        '/home': (BuildContext context) =>
            HomeScaffold(),
        '/pray' : (BuildContext context) =>
            BottomNavigator(index: 1,),
        '/latest': (BuildContext context) =>
            BottomNavigator(index: 2,),
        '/donate' : (BuildContext context) =>
            BottomNavigator(index: 3,),
      },
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}



