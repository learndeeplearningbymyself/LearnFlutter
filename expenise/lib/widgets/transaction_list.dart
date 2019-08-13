import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
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
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 8,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: FittedBox(
                            child: Text('\$${transactions[index].amount}'),
                          ),
                        ),
                      ),
                      title: Text(
                        transactions[index].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      subtitle: Text(
                        DateFormat.yMMMd().format(transactions[index].date),
                      ),
                      trailing: MediaQuery.of(context).size.width > 660
                          ? FlatButton.icon(
                              icon: Icon(Icons.delete),
                              label: Text('Delete'),
                              textColor: Theme.of(context).errorColor,
                              onPressed: () =>
                                  deleteTransaction(transactions[index].id),
                            )
                          : IconButton(
                              icon: Icon(Icons.delete),
                              color: Theme.of(context).errorColor,
                              onPressed: () =>
                                  deleteTransaction(transactions[index].id),
                            ),
                    ),
                  );
                },
                itemCount: transactions.length,
              ));
  }
}
