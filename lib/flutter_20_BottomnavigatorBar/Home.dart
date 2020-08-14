import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFBE0E6),
      child: Center(
        child: Container(
          color: Color(0xFFFBE0E6),
          child: Text('Home', style: TextStyle(color: Colors.black54, fontSize: 48, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
