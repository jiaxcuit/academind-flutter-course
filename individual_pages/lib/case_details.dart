import 'package:flutter/material.dart';

class CaseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          color: Theme.of(context)
              .errorColor, // hard-coded for now, need to change later
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Urgent', // hard-coded for now, need to change later
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Card(
          color: Colors.green, // hard-coded for now, need to change later
          child: Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'In my community', // hard-coded for now, need to change later
              style: TextStyle(
                color: Theme.of(context).cardColor,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Type of support',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text('Action'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Status description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text('Status'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text(
                    'Old man tripped on the floor in his apartment. Need help carrying him to hospital.'),
              ),
            ),
          ],
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Claim this case'),
        )
      ],
    );
  }
}
