import 'package:flutter/material.dart';

import './new_transaction.dart';

class UserTransaction extends StatefulWidget {
  final 
  @override
  _UserTransactionState createState() => _UserTransactionState();

  UserTransaction(this.)
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
