import 'bank.dart';

class Checkaccount extends Bank {
  Checkaccount({required double balancee}) : super(balance: balancee);
  @override
  void deposit(double amount) {
    super.deposit(amount - 12.5);
  }

  @override
  void withDrawa(double amount) {
    super.withdarw(amount + 12.50);
  }
}
