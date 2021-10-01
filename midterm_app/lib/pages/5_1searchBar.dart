import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: false,
      backgroundColor: Colors.blue[300],
      elevation: 0,
      title: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 4),
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
