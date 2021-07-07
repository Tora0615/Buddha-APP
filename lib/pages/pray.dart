import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'others/prayData.dart';

class SignPoemForm {
  var poemID; //ID
  var poemChineseID; //中文ID
  var signPoemArticle; //籤詩文章
  var job; //營生
  var money; //求財
  var marriage; //婚姻
  var family; //家庭
  var findSomeone; //尋人
  var travel; //遠行
  var sick; //治病
  var fame; //功名
  var webLink; //網站連結

  // SignPoemForm({
  //   required this.poemID,
  //   required this.poemChineseID,
  //   required this.signPoemArticle,
  //   required this.job,
  //   required this.money,
  //   required this.marriage,
  //   required this.family,
  //   required this.findSomeone,
  //   required this.travel,
  //   required this.sick,
  //   required this.fame,
  //   required this.webLink,
  // });

  SignPoemForm.formIndex(int index){
    poemID = signPoem[index][0];
    poemChineseID = signPoem[index][1];
    signPoemArticle = signPoem[index][2];
    job = signPoem[index][3];
    money = signPoem[index][4];
    marriage = signPoem[index][5];
    family = signPoem[index][6];
    findSomeone = signPoem[index][7];
    travel = signPoem[index][8];
    sick = signPoem[index][9];
    fame = signPoem[index][10];
    webLink = signPoem[index][11];
  }

}

SignPoemForm poemObject = SignPoemForm.formIndex(0);

class PrayScaffold extends StatelessWidget {
  final title;
  PrayScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double poemSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "功能開發中，敬請期待",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            PoemWidget(poemSize: poemSize),
          ],
        ),
      ),
    );
  }
}

class PoemWidget extends StatelessWidget {
  const PoemWidget({
    Key? key,
    required this.poemSize,
  }) : super(key: key);

  final double poemSize;
  final Color poemColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: poemSize,
      height: poemSize,
      color: poemColor,
      padding: EdgeInsets.all(2),
      child: Column(
        children: [
          // 第一列
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,

                    // 因為 minWidth = 0 / minHeight = 0,
                    // 兩者的值會根據子widget改變大小,
                    // 所以 container 無法填滿空間。
                    // 將兩者改成 double.infinity 就能填滿了
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '地藏靈籤',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 第二列
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '籤詩',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 第三列
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '營生',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '尋人',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '求財',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '遠行',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '婚姻',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '治病',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '家事',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text(
                        '功名',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: Text('123'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(1),
                    color: Colors.white,
                    constraints: BoxConstraints(
                        minHeight: double.infinity, minWidth: double.infinity),
                    child: Center(
                      child: TextButton(
                        // 由於button觸控範圍只有字的周圍，
                        // 為了填滿父節點，要設定以下這些
                        style: TextButton.styleFrom(
                          minimumSize: Size(double.infinity, double.infinity),
                        ),
                        onPressed: () {},
                        child: Text(
                          '去看詩籤源由',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
