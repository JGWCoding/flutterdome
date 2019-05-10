import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterdome/page_login.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([]); //设置全屏
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);//设置非全屏
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);//设置虚拟返回键

//    var image = Image.asset("images/ad.png", fit: BoxFit.fill);
//    var image = Image.asset("images/ad.png", fit: BoxFit.none,width: 357,height: 205,);
//    MediaQuery.of()
//    print("tag image width ${image.width} height ${image.height}");
    return MaterialApp(home: SplashView());
  }
}

class SplashView extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=>MyState();
}
class MyState extends State{
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    startTimer(context);
    return Container(
      color: Colors.lightBlue,
//        width: window.physicalSize.width,
//        height: window.physicalSize.height,
      child: Center(
          child: Container(
        width: ScreenUtil.getInstance().setWidth(375),
        height: ScreenUtil.getInstance().setWidth(205),
        child: Image.asset("images/ad.png", fit: BoxFit.fill),
//          constraints: BoxConstraints.expand(),
      )),
    );
  }

  startTimer(BuildContext context) async {
    Timer(Duration(seconds: 3), _run(context));
  }

  _run(BuildContext context) {
    //todo 跳转页面
    print("to do ");
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        print("123");
        return LoginView();
      }));
    });

  }
}
