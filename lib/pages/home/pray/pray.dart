import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:folding_cell/folding_cell.dart';
import '../../../models/SignPoemForm.dart';

// ignore: must_be_immutable
class PrayScaffold extends StatelessWidget {
  final title;
  PrayScaffold({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrayContext();
  }
}

// 除了共用 header 外的內容
class PrayContext extends StatefulWidget {
  const PrayContext({Key? key}) : super(key: key);

  @override
  _PrayContextState createState() => _PrayContextState();
}

class _PrayContextState extends State<PrayContext> {
  bool isAfterPray = false;

  // 要傳入 WidgetBeforePray 用的 widget
  changeBoolState() {
    setState(() {
      isAfterPray = !isAfterPray;
    });
  }

  @override
  Widget build(BuildContext context) {
    //切換 widget 時，若大小有改變會順便有動畫過度
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild: WidgetAfterPray(),
      secondChild: WidgetBeforePray(changeBoolState: changeBoolState),
      crossFadeState:
          isAfterPray ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}


// 按下占卜按鈕前頁面，內容為介紹等等
class WidgetBeforePray extends StatelessWidget {
  final VoidCallback changeBoolState; //
  const WidgetBeforePray({Key? key, required this.changeBoolState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            '地藏占卜',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '        地藏占卜程式是以「地藏十輪經」為基礎，所開發出來的權巧應用。云云眾生身處無邊煩惱之五濁穢世，心神難免經常有所徬徨，對於茫茫前程不知如何進退。',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '        此一程式藉由地藏菩薩無限威神力之助益，可以拈取迷者本身之身、口、意三業力之作用總合，給予即將應驗之果報的預警。',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '        欲使用此程式占卜未來果報之迷者，應誠心默唸「地藏王菩薩」之名號十遍，祈求菩薩慈悲開示未來果報吉凶，並助迷者善因善緣相親，惡因惡緣速離 !!!',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '誠心默念',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          for (var i = 0; i < 10; i++)
            Column(
              children: [
                Text(
                  '南無地藏王菩薩',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ElevatedButton(
            onPressed: changeBoolState,
            child: Text('按此抽籤',style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              elevation: 2,
              primary: Colors.amber,
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}

// 按下占卜按鈕後頁面，內容為折疊起來的籤詩
class WidgetAfterPray extends StatelessWidget {
  final Random random = Random();
  WidgetAfterPray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double poemSize =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.height;
    int poemIndex = random.nextInt(125);

    return Column(
      children: [
        Center(
          child: FoldingPoem(
            foldHeight: poemSize / 2, //摺疊高度是完整籤詩一半
            poemIndex: poemIndex,
          ),
        ),
        SizedBox(height: 10,),
        Center(
          child: Container(
            height: 144,
            width: 144,
            child: Image.asset(
              "images/icons/icon-transparent.png",
            ),
          ),
        ),
        SizedBox(height: 15,),
      ],
    );
  }
}

// 籤詩內容，為正方形。需傳入籤詩邊長與籤詩的編號 index
class PoemWidget extends StatelessWidget {
  PoemWidget({Key? key, required this.poemSize, required this.poemIndex})
      : super(key: key);

  final int poemIndex;
  final double poemSize;
  final Color poemColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    SignPoemForm poemObject = SignPoemForm.formIndex(poemIndex);
    //SignPoemForm poemObject = SignPoemForm.formIndex(76); //Test only
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
                      child: Text(
                        '第' + poemObject.poemID.toString() + '籤',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                    padding: EdgeInsets.all(5), //內部文字跟邊邊留距離
                    child: Center(
                      child: FittedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              poemObject.signPoemArticle,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.job,
                          style: TextStyle(
                            fontSize: 18,
                          ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.findSomeone,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.money,
                          style: TextStyle(
                            fontSize: 18,
                          ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.travel,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.marriage,
                          style: TextStyle(
                            fontSize: 18,
                          ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.sick,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.family,
                          style: TextStyle(
                            fontSize: 18,
                          ),
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
                      child: FittedBox(
                        child: Text(
                          poemObject.fame,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
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

// 摺疊起來的籤詩 widget (含開啟功能)
class FoldingPoem extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  // 傳入參數
  final foldHeight;
  final poemIndex;
  FoldingPoem({
    Key? key,
    required this.foldHeight,
    required this.poemIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SimpleFoldingCell.create(
        key: _foldingCellKey,
        frontWidget: _buildFrontWidget(),
        innerWidget: _buildInnerWidget(),
        cellSize: Size(MediaQuery.of(context).size.width, foldHeight), //可改高度
        padding: EdgeInsets.all(15),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 0,
        //onOpen: () => print('cell opened'),
        //onClose: () => print('cell closed'),
      ),
    );
  }

  // 摺疊時的樣子
  Widget _buildFrontWidget() {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      padding: EdgeInsets.all(3),
      child: Container(
        color: Colors.white,
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: double.infinity,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "地藏靈籤",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            Text(
              "您抽到的是第" + (poemIndex + 1).toString() + "號籤文",
              style: TextStyle(
                fontSize: 28,
              ),
            ),

            // 開啟籤詩的按鈕
            ElevatedButton(
              onPressed: () {
                _foldingCellKey.currentState?.toggleFold();
              },
              child: Text(
                "打開籤文",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 2,
                primary: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 打開的畫面 (為原本高度的兩倍)
  Widget _buildInnerWidget() {
    // 利用傳入參數生成籤詩
    return PoemWidget(
      poemSize: foldHeight * 2,
      poemIndex: poemIndex,
    );
  }
}
