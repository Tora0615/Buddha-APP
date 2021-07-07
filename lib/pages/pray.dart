import 'package:flutter/material.dart';
import 'others/prayData.dart';

class PrayScaffold extends StatelessWidget {

  final title;
  PrayScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          "功能開發中，敬請期待",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
