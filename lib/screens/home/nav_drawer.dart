import 'package:flutter/material.dart';
import 'package:zartek_assignment/models/brew.dart';
import 'package:zartek_assignment/services/auth.dart';
final AuthService _auth = AuthService();

class NavDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Username'
            ),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Log Out'),
            onTap: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
