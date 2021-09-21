import 'package:flutter/material.dart';
import '../pages/home/pray/pray.dart';
import '../pages/home/latestNews/latestNews.dart';
import '../pages/home/donate/donate.dart';
import 'commonHeaderWithTabButton.dart';

// 2021/09/21 已棄用，一個月後刪除
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
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonHeaderWithTabButton(
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
