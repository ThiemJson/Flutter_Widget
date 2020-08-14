import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Cart', style: TextStyle(color: Colors.black54, fontSize: 48, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
