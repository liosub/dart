import 'bank.dart';
import 'checkingaccount.dart';

void main() {
  var account = Checkaccount(balancee: 1000);

  account.balance = 2000;
  account.deposit(1000);
  print(account.balance);
}
