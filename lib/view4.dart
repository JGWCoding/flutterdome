import 'package:flutter/material.dart';
import 'dart:ui';
class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);

  final List<Offset> points;

  void paint(Canvas canvas, Size size) {
    var paint = new Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1], paint);
    }
  }

  bool shouldRepaint(SignaturePainter other) => other.points != points;
}

class Signature extends StatefulWidget {
  SignatureState createState() => new SignatureState();
}

class SignatureState extends State<Signature> {
  List<Offset> _points = <Offset>[];
Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    print("tag build view4.widget ($size) ");
    return new GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        print("tag onPanUpdate");
        setState(() {
          print("tag refresh");
          RenderBox referenceBox = context.findRenderObject();
          Offset localPosition =
              referenceBox.globalToLocal(details.globalPosition);
          _points = new List.from(_points)..add(localPosition);
        });
      },
      onPanEnd: (DragEndDetails details) => _points.add(null),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: CustomPaint(
              painter: new SignaturePainter(_points),
              size: size==null?window.physicalSize:size,
            ),
          ),
        ],
      ),
//        child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[]{
//        new CustomPaint(painter: new SignaturePainter(_points),),
//        },);
    );
  }
}

class DemoApp extends StatelessWidget {
  Widget build(BuildContext context) => new Scaffold(
      appBar: AppBar(
        title: Text("view4"),
      ),
      body: new Signature());
}

Widget show4() {
  return MaterialApp(
    home: new DemoApp(),
  );
}
