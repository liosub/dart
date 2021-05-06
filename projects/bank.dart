class Bank {
  double _balance;
  static int nobject = 0;
  Bank({required double balance}) : _balance = balance {
    nobject++;
  }
  Bank.newClient() : _balance = 0 {
    nobject++;
  }
  Bank.Vip(double startaccount) : _balance = startaccount * 1.2 {
    nobject++;
  }
  double get balance => _balance;
  set balance(double new_bal) => _balance = new_bal;
  void deposit(double amount) => _balance += amount;
  void withdarw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    } else {
      print("insuffient funds to withdraw");
    }
  }
}
