import 'package:flutter/material.dart';
import 'package:flutter_widget/flutter_05_Snackbar/snackbar_widget.dart';

class SnackBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Input widget',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'ShowSnackbar';
  String snackBarConten = "Tôi là nguyễn Cao thiêm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true,),
      body: Center(
        child: Builder(
          builder: (context) => RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.purple),
            ),
            onPressed: (){
              GlobalSnackbar.show(context,snackBarConten);
            },
            textColor: Colors.white,
            color: Colors.purple,
            child: Text('Show Snackbar', style: TextStyle(fontSize: 18),),
          ),
        ),
      ),
    );
  }
}
