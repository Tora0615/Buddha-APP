import 'package:flutter/material.dart';

class CommonHeader extends StatefulWidget {
  final String headerPicPath;
  CommonHeader({Key? key, required this.headerPicPath}) : super(key: key);

  @override
  _CommonHeaderState createState() => _CommonHeaderState();
}

class _CommonHeaderState extends State<CommonHeader>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          height: 68,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/icons/icon-transparent.png",
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "images/menulogo.png",
                color: Colors.black,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('會員大名'),
              Text('會員級別'),
              Text('功德幣餘額'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Image.asset(widget.headerPicPath),
        ),
      ],
    );
  }
}


