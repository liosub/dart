import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  stdout.write('Enter your name');
  final playername = stdin.readLineSync();
  final ran = Random();

  while (true) {
    stdout.write('Enter r , p or scissor:');
    final input = stdin.readLineSync();
    var playerMove;
    if (input == 'r' || input == 'p' || input == 's') {
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
      break;
    } else {
      print('wrong input');
    }
  }
}
