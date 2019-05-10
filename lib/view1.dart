import 'package:flutter/material.dart';

Widget show() {
  return MaterialApp(
    title: "只是一个属性,设置不会占状态栏",
    home: MyScaffold(),
  );
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Title",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Column(children: <Widget>[Text("hello world"),MyButton()],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: floatPress,
        child: Text("点击"),
        backgroundColor: Colors.green,
      ),
    );
  }

  floatPress() {
    print("click float_button");
  }
}

class MyButton extends StatelessWidget {
  String titleText = "Engage";
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        titleText += "-+";
        print('MyButton was tapped!');
        build(context);
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(500.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text(titleText),
        ),
      ),
    );
  }
}
