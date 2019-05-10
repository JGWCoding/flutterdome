import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login_view",
      theme: ThemeData(primaryColor: Colors.blue),
      home: _Login(),
    );
  }
}

class _Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Row(children: <Widget>[Top(),Bottom()],);
    return Text("Hello");
  }
}
class Top extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("hello world"));
  }
}
class Bottom extends StatelessWidget{@override
  Widget build(BuildContext context) {
    return Container(child: Text("hello world"));
  }}
