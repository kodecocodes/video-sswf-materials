import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: Center(
          child: Container(
            height: 120,
            width: 300,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.headline6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name: Mayowa Ajibade"),
                    Text("Age: 22"),
                    Text("Height: 5.11ft"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
