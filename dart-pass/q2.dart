class Account {
  int _accountNo = 0;
  String _name = "";
  String _dateOfBirth = "";
  double _amount = 0.0;
  DateTime _dateCreated = DateTime.now();

  Account(int accountNo, String name, String dateOfBirth, double amount, DateTime dateCreated) {
    _accountNo = accountNo;
    _name = name;
    _dateOfBirth = dateOfBirth;
    _amount = amount;
    _dateCreated = dateCreated;
  }

  void insert(int accountNo, String name, String dateOfBirth, double amount, DateTime dateCreated) {
    Account(accountNo, name, dateOfBirth, amount, dateCreated);
  }

  void deposit(double amount) {
    if (amount > 0.0) _amount = _amount + amount;
  }

  void withdraw(double amount) {
    if (amount > 0.0 && _amount - amount >= 0.0) _amount = _amount - amount;
  }

  void checkBalance() {
    print("Account{ #${_accountNo} ${_amount}\$ }");
  }

  @override
  String toString() {
    return "Account{ #${_accountNo} \"${_name}\" ${_dateOfBirth} ${_amount}\$ \@${_dateCreated} }";
  }
}

main() {
  Account acc_1 = new Account(0, "Good", "1/1/2001", 5000, DateTime.now());
  Account acc_2 = new Account(1, "Bad", "2/2/2002", 3000, DateTime.now());
  Account acc_3 = new Account(2, "Ugly", "3/3/2003", 1000, DateTime.now());

  // Echoing accounts
  print(acc_1);
  print(acc_2);
  print(acc_3);
  print("");

  // A transaction simulation
  acc_1.checkBalance();
  acc_2.checkBalance();
  acc_3.checkBalance();

  print("\nTransactions In Progress ...\n");

  acc_1.withdraw(2500);
  acc_2.deposit(2500);

  acc_2.withdraw(1750);
  acc_3.deposit(1750);

  acc_1.checkBalance();
  acc_2.checkBalance();
  acc_3.checkBalance();
}
