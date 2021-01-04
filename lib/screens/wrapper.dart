import 'package:flutter/material.dart';
import 'package:zartek_assignment/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:zartek_assignment/models/user.dart';
import 'package:zartek_assignment/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // Return either home or authenticate widget
    if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
