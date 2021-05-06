import 'bank.dart';

class Savingsaccount extends Bank {
  double _rate;
  Savingsaccount({required double balance, required double ratee})
      : _rate = ratee,
        super(balance: balance);

  double get rate => _rate;
  set rate(double percentage) => _rate = percentage;
  void addInterest() {
    balance *= (1 + _rate / 100);
  }
}
