import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zartek_assignment/models/brew.dart';
import 'package:http/http.dart' as http;
import 'package:zartek_assignment/models/menucategory.dart';

class BrewTile extends StatelessWidget {

  Future<MenuCategory> fetchMenuCategory() async {
    final response = await http.get('https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad');
    if(response.statusCode == 200) {
     return MenuCategory.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(

          ),
          // title: Text(brew.name),
          // subtitle: Text('Takes ${brew.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
