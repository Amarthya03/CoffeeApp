import 'package:flutter/material.dart';
import 'package:zartek_assignment/models/user.dart';
import 'package:zartek_assignment/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:zartek_assignment/services/auth.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Wrapper(),
      ),
    );
  }
}

