import 'dart:convert';
import 'dart:io';

void main() {
  print("Welcome to the birthday dictionary. We know the birthdays of:");
  final names = {
    'albert Einstein': '01/17/1706',
    'benjamin Franklin': '02/20/1709',
    'ada lovelace': '12/11/1809',
  };
  birthday("txt.json");
  // for (var name in names.keys) {

  //   print(name);
  // }
  // final name = stdin.readLineSync();
  // for (var entry in names.entries) {
  //   if (name.contains(entry.key)) {
  //     print("$name birthday is ${entry.value}");
  //     break;
  //   }
  // }
  //
}

void birthday(String txt) {
  var file = File(txt);
  Map data = json.decode(file.readAsStringSync());
  data.forEach((key, value) {
    print(key);
  });
  final name = stdin.readLineSync();
  print("choice's birthday is ${data[name]}");
  stdout.write("Would you like to add another person");
  final ans = stdin.readLineSync();
  if (ans == "yes") {
    stdout.write("Enter name :");
    String new_name = stdin.readLineSync()!;
    stdout.write("Enter birthdate :");
    String new_date = stdin.readLineSync()!;
    data[new_name] = new_date;
    file.writeAsStringSync(jsonEncode(data));
  }
}
