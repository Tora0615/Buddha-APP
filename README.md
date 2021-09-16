# Buddha-APP
An APP of  Buddhism for Spread Buddhist knowledge.

## 一些學習資源紀錄
[Flutter 修改应用名称、图标、启动页](https://blog.csdn.net/yechaoa/article/details/98958344)
教學待寫

[Git Commit Message 這樣寫會更好，替專案引入規範與範例](https://wadehuanglearning.blogspot.com/2019/05/commit-commit-commit-why-what-commit.html)

## 一些踩雷紀錄
### 修改啟動頁面Logo的時候，若drawable資料夾有好幾個，就都要改。因為會有數個不同的相容性版本使用 [Link](https://stackoverflow.com/questions/47093515/drawable-v21-v24-what-is-it)
![](app_unused_files/catched_bug01.jpg)

### 啟動頁白天黑夜模式顏色更改

### 函式作為參數傳入widget
要設定為 final VoidCallback changeBoolState; 再傳入跟呼叫
[Pass method as parameter to a widget](https://stackoverflow.com/questions/54493002/pass-method-as-parameter-to-a-widget)

### 系統字體影響 APP 文字大小 - 解決方法:
[How to make Flutter app font size independent from device settings?](https://stackoverflow.com/questions/59143443/how-to-make-flutter-app-font-size-independent-from-device-settings)


### Can't use MediaQuery with the builder parameter of MaterialApp in flutter's new versions
[Link](https://stackoverflow.com/questions/67751639/cant-use-mediaquery-with-the-builder-parameter-of-materialapp-in-flutters-new)

### 上架 PlayStore 錯誤 : 版本代碼 1 已經使用過了,請使用其他版本代碼。
解決 : pubspec.yaml 的 version 後面要加上加號跟數字，如 0.1.3+2 
說明 : 
* 'XYZ+n' 這裡的 'xyz' 代表版本名稱，'n'代表版本編號 
    * 版本名稱是給人看的 (versionName)
    * 版本編號是給 PlayStore 辨識用，每次更新記得加 1 (versionCode)
參考資料 : 
[Flutter: upgrade the version code for play store](https://stackoverflow.com/questions/53570575/flutter-upgrade-the-version-code-for-play-store)
[自動產生 VersionCode 與 VersionName](https://louis383.medium.com/%E8%87%AA%E5%8B%95%E7%94%A2%E7%94%9F-versioncode-%E8%88%87-versionname-cb6039152b1f)

## TODO
[V] 啟動logo要換高畫質的


## 程式架構
* common widget wrapper (共用頁面)
    * pray scaffold (pray)
        * PrayContext
            * WidgetBeforePray (抽籤前介紹頁面)
            * WidgetAfterPray
                * FoldingPoem
                    * _buildFrontWidget (摺起來的簽)
                    * _buildInnerWidget (內部資料)