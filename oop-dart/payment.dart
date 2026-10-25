abstract class PaymentMethod {
  double get feeRate;
  void pay(double amount);
}

class CardPayment extends PaymentMethod {
  @override
  double get feeRate => 0.02; // 2% fee

  @override
  void pay(double amount) {
    double fee = amount * feeRate;
    print("Paid \$${amount + fee} using Card. Fee: \$${fee}");
  }
}

class WalletPayment extends PaymentMethod {
  @override
  double get feeRate => 0.03; // 3% fee

  @override
  void pay(double amount) {
    double fee = amount * feeRate;
    print("Paid \$${amount + fee} using Wallet. Fee: \$${fee}");
  }
}

class CashPayment extends PaymentMethod {
  @override
  double get feeRate => 0.0; // No fee for cash

  @override
  void pay(double amount) {
    print("Paid \$${amount} using Cash. No fee applied.");
  }
}

class InstpayPayment extends PaymentMethod {
  @override
  double get feeRate => 0.015; // 1.5% fee

  @override
  void pay(double amount) {
    double fee = amount * feeRate;
    print("Paid \$${amount + fee} using Instapay. Fee: \$${fee}");
  }
}

class PaymentService {
  void processPayment(PaymentMethod method, double amount) {
    method.pay(amount);
  }
}
