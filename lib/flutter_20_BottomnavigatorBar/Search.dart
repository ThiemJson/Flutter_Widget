import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Search', style: TextStyle(color: Colors.black54, fontSize: 48, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
