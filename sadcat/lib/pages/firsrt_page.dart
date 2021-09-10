import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.fingerprint),
            tooltip: 'Boutton 1',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bungalow),
            tooltip: 'Boutton 2',
          ),
        ],
      ),
      body: Center(
        child: Text('First Page'),
      ),
    );
  }
}
