import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: PlayerProfile(
          name: "Mayowa Ajibade",
          age: 22,
          height: 5.11,
        ),
      ),
    );
  }
}

class PlayerProfile extends StatefulWidget {
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
  _PlayerProfileState createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        print(isSelected);
      },
      child: Container(
        height: 120,
        width: 300,
        color: isSelected ? Colors.amber : Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.headline6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${widget.name}"),
                Text("Age: ${widget.age}"),
                Text("Height: ${widget.height} ft"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
