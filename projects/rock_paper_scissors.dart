import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  final ran = Random();
  dynamic flag = true;
  stdout.write("Enter Your name Please");
  final playername = stdin.readLineSync();
  while (flag == true) {
    stdout.write("Rock , Paper or Scissors ? (r/p/s): ");
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = ran.nextInt(3);
      final move = Move.values[random];

      if (playerMove == move) {
        print('it\'s draw');
      } else if ((playerMove == Move.rock && move == Move.scissors) ||
          (playerMove == Move.paper && move == Move.rock) ||
          (playerMove == Move.scissors && move == Move.paper)) {
        print('You win $playername');
      } else {
        print('PC beat you ,good job hamasa');
      }
    } else if (input == 'q') {
      flag = false;
      print('Game Over');
      break;
    } else {
      print('Invalid input');
    }
  }
}
