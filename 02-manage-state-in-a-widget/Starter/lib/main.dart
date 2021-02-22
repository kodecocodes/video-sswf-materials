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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlayerProfile(
                name: "Mayowa Ajibade",
                age: 22,
                height: 5.11,
              ),
              SizedBox(height: 16),
              PlayerProfile(
                name: "Sam Smith",
                age: 28,
                height: 6.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerProfile extends StatelessWidget {
  final String name;
  final int age;
  final double height;

  const PlayerProfile({
    Key key,
    this.name,
    this.age,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text("Name: $name"),
              Text("Age: $age"),
              Text("Height: $height ft"),
            ],
          ),
        ),
      ),
    );
  }
}
