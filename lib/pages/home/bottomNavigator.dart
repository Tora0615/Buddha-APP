import 'package:flutter/material.dart';
import '../commonWidget/CommonHeader.dart';
import 'pray/pray.dart';
import 'donate/donate.dart';
import 'latestNews/latestNews.dart';
import 'temp/temp.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {

  late int _currentIndex = widget.index; //重要
  // 無 late : The instance member 'widget' can't be accessed in an initializer.  // 參考 : https://stackoverflow.com/questions/64092241/the-instance-member-widget-cant-be-accessed-in-an-initializer?rq=1

  final pages = [
    TempScaffold(),
    PrayScaffold(),
    LatestNewsScaffold(),
    DonateScaffold()
  ]; // index 0 temp null (業主沒給)


  @override
  Widget build(BuildContext context) {
    //_currentIndex = widget.index;

    return SafeArea(
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "會員精舍",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: "地藏占卜",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: "修行指南",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.volunteer_activism_outlined),
              label: "供養地藏",
            )
          ],
          currentIndex: _currentIndex, //目前選擇頁索引值
          fixedColor: Colors.indigo, //選擇頁顏色
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _onItemClick, //BottomNavigationBar 按下處理事件
        ),
      ),
    );
  }

//BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
