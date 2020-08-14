import 'package:flutter/material.dart';

class Department extends StatefulWidget {
  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Department', style: TextStyle(color: Colors.black54, fontSize: 48, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
