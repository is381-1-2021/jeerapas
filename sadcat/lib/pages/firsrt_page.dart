import 'package:flutter/material.dart';
import 'package:sadcat/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String? _message = "Here is where we get value back.";
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile : $_message'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Text("go to..."),
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await Navigator.pushNamed(context, "/6");
                setState(() {
                  _message = response.toString();
                });
              },
              child: Text("Please click to fill the form"),
            ),
          ],
        ),
      ),
    );
  }
}
