import 'package:flutter/material.dart';

class MyTeset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen(),);
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("登录"),
            onPressed: () {
              //跳转到新的 页面我们需要调用 navigator.push方法
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Second()));
            }),
      ),
    );
  }
}

/**
 * 第二个页面
 */
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
      ),
      body: new Center(
        //onPressed  点击事件
        child: new RaisedButton(child: new Text("注销"), onPressed: () {
          //回到上一个页面 该pop将Route从导航器管理的路由栈中移除当前路径
          Navigator.pop(context);
        }),
      ),
    );
  }
}



class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Stack(
      children: [
        new Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 253, 72, 72),
                    const Color.fromARGB(255, 87, 97, 249),
                  ],
                  stops: [0.0, 1.0],
                )
            ),
            child: new Align(
                alignment: FractionalOffset.bottomCenter,
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    '我是bottom',
                  ),
                )
            )
        ),
        new Scaffold(
          backgroundColor: const Color(0x00000000),
          appBar: new AppBar(
            backgroundColor: const Color(0x00000000),
            elevation: 0.0,
            leading: new Center(
              child: new ClipOval(
                child: new Image.network(
                  'http://i.imgur.com/TtNPTe0.jpg',
                ),
              ),
            ),
            actions: [
              new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {
                  // TODO: implement
                },
              ),
            ],
            title: const Text('tofu\'s songs'),
//            bottom: new CustomTabBar(
//              pageController: _pageController,
//              pageNames: pages.keys.toList(),
//            ),
          ),
          body: Top(),
        ),
      ],
    ),);
  }
}
class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
