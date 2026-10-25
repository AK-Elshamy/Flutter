import 'payment.dart';

void main() {
  print("\n\n--- Payment Processing ---\n");
  List<PaymentMethod> paymentMethods = [
    CardPayment(),
    WalletPayment(),
    CashPayment(),
    InstpayPayment(),
  ];

  for (var method in paymentMethods) {
    print("\nProcessing payment with ${method.runtimeType}:");
    PaymentService().processPayment(method, 100.0);
  }
}
