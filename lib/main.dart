import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _ChangeCounter();
}

class _ChangeCounter extends State<Counter> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
  }

  void changeCounter() {
    setState(() {
       counter++;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Button Pressed'),
                Text('$counter')
              ],
            )
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: changeCounter,
              child: const Icon(Icons.add),
            )
        )
    );
  }
}
