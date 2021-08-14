import 'package:flutter/material.dart';
import 'dart:ui';
import '../commonWidget/BlurryContainer.dart';

class HomeScaffold extends StatelessWidget {
  static TextStyle myTextStyleSetting = TextStyle(
    fontSize: 27,
    color: Colors.indigoAccent,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //背景圖
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/home_bg_001.png"),
                fit: BoxFit.cover,
                alignment: Alignment(-0.4,
                    0) //中心(0,0)，左上 (-1,-1) https://stackoverflow.com/questions/53716571/how-to-align-single-widgets-in-flutter
                ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlurryContainer(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.white,
                    height: 80,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User001",
                          style:TextStyle(
                            fontSize: 27,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "初發心菩薩",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  BlurryContainer(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.white,
                    height: 80,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "功德幣餘額",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          "＄9999",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  BlurryContainer(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.white,
                    height: 80,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pray');
                      },
                      child: Text(
                        "地藏占卜",
                        style: myTextStyleSetting,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  BlurryContainer(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.white,
                    height: 80,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/latest');
                      },
                      child: Text(
                        "最新文章",
                        style: myTextStyleSetting,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  BlurryContainer(
                    padding: EdgeInsets.all(0),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.white,
                    height: 80,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/donate');
                      },
                      child: Text(
                        "地藏供養",
                        style: myTextStyleSetting,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
