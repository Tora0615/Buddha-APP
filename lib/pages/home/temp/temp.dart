import 'package:flutter/material.dart';
import '../../commonWidget/CommonHeader.dart';

class TempScaffold extends StatelessWidget {
  const TempScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonHeader(
          headerPicPath: "images/pray/bg_pray.jpg",
        ),
        Container(
          child: Center(
            child: Text("開發中"),
          ),
        ),
      ],
    );
  }
}
