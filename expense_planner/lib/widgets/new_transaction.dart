import 'package:flutter/material.dart';
import './user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount < 0) {
      return; // stops the function execution
    } else {
      addTx(
        enteredTitle,
        enteredAmount,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              onSubmitted: (_) =>
                  submitData(), // val (_) is the value submitted by user
              // if to use `onSubmitted`, then we have to have a function that takes the value
              // even though we don't need to use it
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: submitData,
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
