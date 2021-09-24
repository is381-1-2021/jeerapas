import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sadcat/model/formModel.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<FormModel>(
                builder: (context, model, child) {
                  return Text(
                      'Profile : ${model.firstName} ${model.lastName} ${model.age}');
                },
              ),
            ),
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
              onPressed: () {
                Navigator.pushNamed(context, "/6");
              },
              child: Text("Please click to fill the form"),
            ),
          ],
        ),
      ),
    );
  }
}
