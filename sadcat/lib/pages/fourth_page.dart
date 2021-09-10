import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I'
    ];
    final List<int> colorCode = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100.0,
            color: Colors.amber[colorCode[index % 3]],
            child: Center(
              child: Text('Enter ${entries[index]}'),
            ),
          );
        },
        separatorBuilder: (context, int) => Divider(),
      ),
    );
  }
}
