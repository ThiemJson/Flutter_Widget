import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Title',
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
  Icon searchBtn = new Icon(Icons.search);
  Widget appBarTitle = Center(  child: Text('Home page'), );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: appBarTitle,
        centerTitle: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
              Color(0xFFC41A3B),
              Color(0xFFFBE0E6)
            ])
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: searchBtn,
            onPressed: (){
              setState(() {
                if(this.searchBtn.icon == Icons.search){
                  this.searchBtn = Icon(Icons.close);
                  this.appBarTitle = TextField(
                    autofocus: true,
                    cursorColor: Color(0xFFFBE0E6),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      prefixIcon: Icon(Icons.search, color: Colors.white,),
                      hintStyle: TextStyle(color: Colors.white,),
                      hintText: 'Searching...'
                    ),
                  );
                }
                else{
                  this.searchBtn = Icon(Icons.search);
                  this.appBarTitle = Center(child: Text('Home page', style: TextStyle(color: Colors.white,),));
                }
              });
            },
          )
        ],
      ),
    );
  }
}

