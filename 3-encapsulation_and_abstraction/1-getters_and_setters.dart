class BankAccount{

  double _balance = 0.0;

  double get balance => _balance;
  String get status{
    if (_balance == 0.0){
      return "Empty";
    } else if (_balance > 0 && _balance < 250.0){
      return "Low";
    } else {
      return "Healthy";
    }
  }

  set balance(double value){
    if (value >= 0){
      _balance = value;
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.balance = 250.0;
  print('Balance: ${account.balance}');
  print('Status: ${account.status}');
}