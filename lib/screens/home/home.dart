import 'package:flutter/material.dart';
import 'package:zartek_assignment/models/brew.dart';
import 'package:zartek_assignment/services/database.dart';
import 'package:provider/provider.dart';
import 'package:zartek_assignment/screens/home/brew_list.dart';
import 'package:zartek_assignment/screens/home/nav_drawer.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[

          ],
        ),
        body: Container(
          child: BrewList(),
        ),
      ),
    );
  }
}
