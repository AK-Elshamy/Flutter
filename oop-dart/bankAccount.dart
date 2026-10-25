class Bankaccount {
  double _balance;
  String _ownerName;
  Bankaccount(this._balance, this._ownerName);
  double get balance => _balance;
  String get ownerName => _ownerName;
  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError("Deposit amount must be greater than zero.");
    }
    _balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= 0 || amount > _balance) {
      return false;
    }
    _balance -= amount;
    return true;
  }

  void set balance(double value) {
    if (value < 0) {
      throw ArgumentError("Balance cannot be negative.");
    }
    _balance = value;
  }

  bool transferTo(Bankaccount target, double amount) {
    bool success = withdraw(amount);
    if (success) {
      target.deposit(amount);
      return true;
    }
    return false;
  }
}
