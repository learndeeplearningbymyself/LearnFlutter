import 'package:flutter/material.dart';

import './transaction_item.dart';

import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    print('build() TransactionList');
    return Container(
        height: 300,
        child: transactions.isEmpty
            ? LayoutBuilder(
                builder: (ctx, constraints) {
                  return Column(
                    children: <Widget>[
                      Text('No Transactions added yet',
                          style: Theme.of(context).textTheme.title),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  );
                },
              )
            : ListView(
                children: [
                  ...transactions
                    .map((tx) => TransactionItem(
                        key: ValueKey(tx.id),
                        transaction: tx,
                        deleteTransaction: deleteTransaction))
                    .toList()
                ],
              ));
  }
}
