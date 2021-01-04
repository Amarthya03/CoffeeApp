import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartek_assignment/models/brew.dart';
import 'package:zartek_assignment/screens/home/brew_tile.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {

  @override
  Widget build(BuildContext context) {

    final brews = Provider.of<List<Brew>>(context);
    // print(brews.documents);
    brews.forEach((element) {
      print(element.name);
      print(element.sugars);
      print(element.strength);
    });

    return ListView.builder(
      itemCount: brews.length,
      itemBuilder: (context, index) {
        return BrewTile(
          brew: brews[index],
        );
      },

    );
  }
}
