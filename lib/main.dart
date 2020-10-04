import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'NavigationBar/Navigation.dart';
import 'Pages/forcollab.dart';
import 'Pages/contact.dart';
import 'Pages/Home/home.dart';
import 'Pages/resume.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Navigation>(
      create: (context) => Navigation(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Graduate',
        ),
        routes: {
          Home.id: (context) => Home(),
          ForCollab.id: (context) => ForCollab(),
          Contact.id: (context) => Contact(),
          Resume.id: (context) => Resume(),
        },
        home: Home(),
      ),
    );
  }
}
