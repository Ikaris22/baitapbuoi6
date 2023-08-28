import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChangeColor());
}

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<StatefulWidget> createState() => _ChangeColor();
}

class _ChangeColor extends State<ChangeColor> {
  List<Color> colors = [
    Colors.white,
    Colors.black,
    Colors.red,
    Colors.cyan,
    Colors.blueGrey,
    Colors.brown,
    Colors.green,
    Colors.pink,
    Colors.orange
  ];
  Color color = Colors.white;
  @override
  void initState() {
    super.initState();
  }

  void changeBackgroundColor() {
    setState(() {
      color = colors[Random().nextInt(colors.length)];
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: color,
          body: Center(
            child: ElevatedButton(
              onPressed: changeBackgroundColor,
              child: Text('ChangeColor'),
            ),
          ),
        ));
  }
}
