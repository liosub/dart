import 'dart:io';

void main() {
  print("Enter Your String");
  final s = stdin.readLineSync();
  String str = s.toString();
  rev_str(str);
}

void rev_str(String s) {
  String ne = s.split(' ').reversed.toList().join(" ");
  print(ne);
}
