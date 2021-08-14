import 'package:flutter/material.dart';

class DonateScaffold extends StatelessWidget {

  final title;
  DonateScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "供養地藏：功能開發中，敬請期待",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}