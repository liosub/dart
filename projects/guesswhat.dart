import 'dart:io';
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Guess any Number from 1 to 100: ");
  final num = stdin.readLineSync();
  int nu = int.parse(num!);
  final ran = Random();
  int randomguess = ran.nextInt(100);
  if (randomguess == nu) {
    print(" excellent guess ");
  } else if (nu > randomguess) {
    print("You are Higher");
  } else {
    print("Your are Lower");
  }
}
