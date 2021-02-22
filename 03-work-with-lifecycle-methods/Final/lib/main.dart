import 'package:flutter/material.dart';
import 'package:rw_flutter_stful_stless/models/player.dart';
import 'package:rw_flutter_stful_stless/utils/fake_request.dart';

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
  bool isLoading = false;
  Player player;

  @override
  void initState() {
    super.initState();
    fetchPlayerData();
  }

  void fetchPlayerData() {
    setState(() {
      isLoading = true;
    });
    FakeRequest().getPlayerProfile().then((res) {
      setState(() {
        player = res;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : PlayerProfile(player: player),
      ),
    );
  }
}

class PlayerProfile extends StatefulWidget {
  final Player player;

  const PlayerProfile({Key key, this.player}) : super(key: key);

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
                Text("Name: ${widget.player.name}"),
                Text("Age: ${widget.player.age}"),
                Text("Height: ${widget.player.height} ft"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
