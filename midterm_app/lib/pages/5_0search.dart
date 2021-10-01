import 'package:flutter/material.dart';
import 'package:midterm_app/pages/5_1searchBar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.blue[300],
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
