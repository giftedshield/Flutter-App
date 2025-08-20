import 'package:get/state_manager.dart';
import '../models/player.dart';

class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(name: "string", position: "string", number: 0, image: "assets/Tokai_Teio.jpg"),
    Player(name: "string", position: "string", number: 1, image: "assets/Tokai_Teio.jpg"),
    Player(name: "string", position: "string", number: 2, image: "assets/Tokai_Teio.jpg"),
    Player(name: "string", position: "string", number: 3, image: "assets/Tokai_Teio.jpg"),
  ].obs;

  void updatePlayer(int index, String name, String position, int number) {
    players[index].name = name;
    players[index].position = position;
    players[index].number = number;
    players.refresh();
  }
}