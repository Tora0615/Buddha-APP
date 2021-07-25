import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'commonWidget/CommonHeader.dart';

class LatestNewsScaffold extends StatelessWidget {
  final title;
  LatestNewsScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: CommonHeader(headerPicPath: "images/pray/bg_pray.jpg",),
      ),
    );
  }
}
