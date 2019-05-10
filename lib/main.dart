import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:async';
import 'package:flutter/services.dart'; //使用平台通道调用原生代码
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:async';
import 'dart:ui';

import 'package:flutterdome/page_splash.dart';
import 'package:flutterdome/util/Adapt.dart';
import 'package:flutterdome/view.dart';

//void main() => runApp(MyApp1());
//void main() => runApp(show());
void main() {
  runApp(MyApp());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ChangeView(),Login1()],
        ),
        margin: EdgeInsets.all(30),
        color: Colors.red,
      ),
    );
  }
}

class Login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side:BorderSide(width: 1),//没用
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(radius)),
      ),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 0),
              child: TextField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: "NotoSansTC",
                    fontSize: 18.0,
                    color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "登入名稱ADJG",
                  hintStyle: TextStyle(
                      fontFamily: "NotoSansTC",
                      fontSize: 18.0,
                      color: Color(0xFFC5C5C5)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(0xff, 0x0F, 0x64, 0x88)),
              margin: EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 40),
              child: MaterialButton(
                child: Text(
                  "註       冊",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: "WorkSansBold"),
                ),
              ),
            ),
          ]),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Top(),
          Container(
            color: Color(0xFFFDFFE8),
            child: Bottom(),
            height: Adapt.screenH() / 580 * 360,
            alignment: Alignment.center,
          )
        ],
      ),
    ));
  }
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      padding: EdgeInsets.all(Adapt.padTopH()),
      padding: EdgeInsets.only(
          top: Adapt.padTopH() + 30, bottom: 30, left: 30, right: 30),
      width: Adapt.screenW(),
      height: Adapt.screenH() / 580 * 220,
      alignment: Alignment.center,
      color: Color(0xFF0F6488),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/logo.png",
              width: 250,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "搜尋最適合你子女的課程",
                style: TextStyle(
                  fontFamily: "NotoSansTC",
                  fontSize: 20,
                  color: Color(0xBBFFFFFF),
                ),
              ),
            )
          ]),
    );
  }
}

var radius = 20.0;

class Bottom extends StatelessWidget {
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFFDFFE8),
        width: double.infinity,
//      height: Adapt.screenH() / 3 * 2,
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 5.0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ChangeView(),
                Container(
                  margin:
                      EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: "NotoSansTC",
                        fontSize: 18.0,
                        color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "登入名稱ADJG",
                      hintStyle: TextStyle(
                          fontFamily: "NotoSansTC",
                          fontSize: 18.0,
                          color: Color(0xFFC5C5C5)),
                    ),
                  ),
                ),
                Container(
                  height: 1.0,
                  margin:
                      EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 0),
                  color: Color(0xFF6CCFDD),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 30, right: 30, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      controller: passController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: "NotoSansTC",
                          fontSize: 18.0,
                          color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "密碼",
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansTC",
                            fontSize: 18.0,
                            color: Color(0xFFC5C5C5)),
                      ),
                    )),
                Container(
                  height: 1.0,
                  margin:
                      EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
                  color: Color(0xFF6CCFDD),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.topRight,
                  child: FlatButton(
                      onPressed: login(),
                      child: Text(
                        "忘記密碼?",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xFFC5C5C5),
                            fontSize: 16.0,
                            fontFamily: "WorkSansMedium"),
                      )),
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(0xff, 0x89, 0xC5, 0xD2)),
                  margin:
                      EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
                  child: MaterialButton(
                    onPressed: login(),
                    child: Text(
                      "登       入",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: "WorkSansBold"),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(0xff, 0x0F, 0x64, 0x88)),
                  margin:
                      EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 40),
                  child: MaterialButton(
                    onPressed: login(),
                    child: Text(
                      "註       冊",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: "WorkSansBold"),
                    ),
                  ),
                ),
              ]),
        ));
  }

  login() {}
}

class ChangeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChangeView();
  }
}

class _ChangeView extends State {
  bool people = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      color: Color(0x00FDFFE8),
      child: Row(
        //个人 一行
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//                  Text("個人"), Text("商戶")
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: onClick,
              child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: double.maxFinite,
//                        color: Color(0xFFFDFFE8),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radius),
//                        topRight: Radius.circular(radius)
                      ),
                      color: people ? Color(0xFFFFFFFF) : Color(0xFF89C5D2)),
//                              color: Colors.red),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/icon_member_login.png",
                        fit: BoxFit.fitHeight,
                        color: people ? Color(0xFF0F6488) : Colors.white,
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Text("個人",
                          style: TextStyle(
                              fontSize: 25,
                              color: people ? Color(0xFF0F6488) : Colors.white))
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: onClick,
              child: Container(
                alignment: Alignment.center,
//                        color: Color(0xFF89C5D2),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: people ? Color(0xFF89C5D2) : Colors.white,
                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(radius),
                        topRight: Radius.circular(radius))),
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/icon_business_login.png",
                      fit: BoxFit.fitHeight,
                      color: people ? Colors.white : Color(0xFF0F6488),
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Text(
                      "商戶",
                      style: TextStyle(
                        fontSize: 25,
                        color: people ? Colors.white : Color(0xFF0F6488),
                      ),
                    )
                  ],
                ),
//                        Text("商戶")
              ),
            ),
          )
        ],
      ),
    );
  }

  void onClick() {
    setState(() {
      people = !people;
    });
  }
}
