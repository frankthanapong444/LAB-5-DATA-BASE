import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/Transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transaction = [
    Transaction(title: "หนังสือ", amount: 500, date: DateTime.now()),
    Transaction(title: "เสื้อผ้า", amount: 500, date: DateTime.now()),
    Transaction(title: "กางเกง", amount: 500, date: DateTime.now())
  ];

  List<Transaction> getTransaction() {
    return transaction;
  }

  addTrasaction(Transaction statement) {
    transaction.add(statement);
  }
}
