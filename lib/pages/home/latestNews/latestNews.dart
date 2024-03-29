import 'package:flutter/material.dart';
import '../../commonWidget/CommonHeader.dart';

class LatestNewsScaffold extends StatelessWidget {
  final title;
  LatestNewsScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonHeader(headerPicPath: "images/pray/bg_pray.jpg",),
        Center(
          child: Text(
            "修行指南：功能開發中，敬請期待",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
