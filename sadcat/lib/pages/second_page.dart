import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Table(
          children: [
            TableRow(
              children: [
                Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child: Text('ID')),
                Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child: Text('Name')),
                Container(
                    margin: EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                    ),
                    child: Text('Gender')),
              ],
            ),
            TableRow(
              children: [
                Text('1'),
                Text('Harry'),
                Text('Male'),
              ],
            ),
            TableRow(
              children: [
                Text('2'),
                Text('Hermione'),
                Text('Female'),
              ],
            ),
            TableRow(
              children: [
                Text('3'),
                Text('Ron'),
                Text('Male'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
