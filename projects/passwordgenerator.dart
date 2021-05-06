import 'dart:math';

void main() {
  final ran = Random();
  String alphabet = "a b c d e f g h i j k l m n o p q r s t u v w x y z";
  String spec_char = "¬ ! £ ^ & * ( ) _ + @ ~ ? < >";
  final spec = [];
  spec.addAll(spec_char.split(' '));
  final lowe_list = [];
  lowe_list.addAll(alphabet.toLowerCase().split(' '));
  final upper_list = [];
  upper_list.addAll(alphabet.toUpperCase().split(' '));
  int Random_lenght = RadomInRange(5, 10);
  int Randomlowerlist, Randomupperlist;
  final password = [];
  int i = 0;
  while (i < Random_lenght) {
    Randomlowerlist = RadomInRange(0, 25);
    Randomupperlist = RadomInRange(0, 25);
    password.add(lowe_list[Randomlowerlist]);
    password.add(upper_list[Randomupperlist]);
    password.add(spec[ran.nextInt(15)]);
    password.add(ran.nextInt(10));
    i++;
  }
  String pass = password.join("");
  print(pass);
}

int RadomInRange(int min, int max) {
  return (Random().nextDouble() * (max - min + 1) + min).floor();
}
