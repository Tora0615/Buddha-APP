import 'package:flutter/material.dart';

// 2021/09/21 已棄用，一個月後刪除
class CommonHeaderWithTabButton extends StatelessWidget {
  final String headerPicPath;
  final Function changeIndex;
  const CommonHeaderWithTabButton({Key? key, required this.headerPicPath,required this.changeIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double halfWidth = MediaQuery.of(context).size.width / 2;
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
          child: Image.asset(headerPicPath),
        ),
        // Container(
        //   color: Colors.black,
        //   child: Column(
        //     children: [
        //       Row(
        //         children: [
        //           Expanded(
        //             child: Container(
        //               margin: EdgeInsets.fromLTRB(0, 0, 0.5, 1),
        //               color: Colors.white,
        //               child: TextButton(
        //                 onPressed: () {},
        //                 child: Text(
        //                   '會員精舍',
        //                   style: TextStyle(
        //                     fontSize: 20,
        //                     color: Colors.black,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: Container(
        //               margin: EdgeInsets.fromLTRB(0.5, 0, 0, 1),
        //               color: Colors.white,
        //               child: TextButton(
        //                 onPressed: () {
        //                   changeIndex(1);
        //                 },
        //                 child: Text(
        //                   '地藏占卜',
        //                   style: TextStyle(
        //                     fontSize: 20,
        //                     color: Colors.black,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           Expanded(
        //             child: Container(
        //               margin: EdgeInsets.fromLTRB(0, 1, 0.5, 2),
        //               color: Colors.white,
        //               child: TextButton(
        //                 onPressed: () {
        //                   changeIndex(2);
        //                 },
        //                 child: Text(
        //                   '修行指南',
        //                   style: TextStyle(
        //                     fontSize: 20,
        //                     color: Colors.black,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: Container(
        //               margin: EdgeInsets.fromLTRB(0.5, 1, 0, 2),
        //               color: Colors.white,
        //               child: TextButton(
        //                 onPressed: () {
        //                   changeIndex(3);
        //                 },
        //                 child: Text(
        //                   '供養地藏',
        //                   style: TextStyle(
        //                     fontSize: 20,
        //                     color: Colors.black,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
