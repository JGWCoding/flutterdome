import 'package:flutter/material.dart';





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
