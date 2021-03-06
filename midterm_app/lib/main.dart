import 'package:flutter/material.dart';
import 'package:midterm_app/model/formModel.dart';

import 'package:midterm_app/pages/1login.dart';
import 'package:midterm_app/pages/2home.dart';
import 'package:midterm_app/pages/3profile.dart';
import 'package:midterm_app/pages/4fav.dart';
import 'package:midterm_app/pages/5search.dart';
import 'package:midterm_app/pages/6flashcard.dart';
import 'package:midterm_app/pages/7notification.dart';
import 'package:midterm_app/pages/8settings.dart';
import 'package:midterm_app/pages/9flash_card.dart';
import 'package:midterm_app/pages/editEmail.dart';
import 'package:midterm_app/pages/editFirstName.dart';
import 'package:midterm_app/pages/editLastName.dart';
import 'package:midterm_app/pages/editPassword.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FormModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito",
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/Login': (context) => LoginPage(),
        '/Home': (context) => MyHomePage(),
        '/Profile': (context) => ProfilePage(),
        '/Favorite': (context) => FavoritePage(),
        '/Search': (context) => SearchPage(),
        '/FlashCard': (context) => FlashCardPage(),
        '/Settings': (context) => SettingsPage(),
        '/Notification': (context) => NotificationPage(),
        '/3': (context) => EditFirstName(),
        '/4': (context) => EditLastName(),
        '/5': (context) => EditEmail(),
        '/6': (context) => EditPassword(),
        '/7': (context) => FlashCard(),
      },
    );
  }
}
