import 'package:rw_flutter_stful_stless/models/player.dart';

class FakeRequest {
  Future<Player> getPlayerProfile() async {
    bool success = true;
    if (success) {
      final response =
          await Future.delayed(Duration(seconds: 10), () => player1);
      return response;
    } else {
      throw Exception("Failed to load Player Data!");
    }
  }
}
