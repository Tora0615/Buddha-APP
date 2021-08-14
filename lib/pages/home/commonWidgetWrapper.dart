import 'package:flutter/material.dart';
import '../commonWidget/CommonHeader.dart';
import 'pray/pray.dart';
import 'latestNews/latestNews.dart';
import 'donate/donate.dart';

class CommonWidgetWrapper extends StatefulWidget {
  final index;
  const CommonWidgetWrapper({Key? key,this.index}) : super(key: key);

  @override
  _CommonWidgetWrapperState createState() => _CommonWidgetWrapperState(index);
}

class _CommonWidgetWrapperState extends State<CommonWidgetWrapper> {

  int index;
  _CommonWidgetWrapperState(this.index);

  void setIndex(int inputIndex){
    if (inputIndex != index){
      setState(() {
        index = inputIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget? widgetByIndex;
    switch (index){
      case 1:
        widgetByIndex = PrayScaffold();
        break;
      case 2:
        widgetByIndex = LatestNewsScaffold();
        break;
      case 3:
        widgetByIndex = DonateScaffold();
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonHeader(
                headerPicPath: "images/pray/bg_pray.jpg",
                changeIndex: setIndex,
              ),
              widgetByIndex!,
            ],
          ),
        ),
      ),
    );
  }
}
