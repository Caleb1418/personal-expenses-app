import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final Function addTX;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTX);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            ElevatedButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addTX(
                    titleController.text, double.parse(amountController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
