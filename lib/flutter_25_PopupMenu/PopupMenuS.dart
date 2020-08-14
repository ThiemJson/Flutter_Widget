import 'package:flutter/material.dart';

class PopupMenuS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Views',
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
  Widget appbarTitle = Center( child: Text('Home Page'),);
  Icon searchBtn = Icon(Icons.search, color: Colors.white,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: appbarTitle,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: searchBtn,
              onPressed: (){
                setState(() {
                  if(this.searchBtn.icon == Icons.search){
                    this.searchBtn = Icon(Icons.close, color: Colors.white,);
                    this.appbarTitle = Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TextField(
                        cursorColor: Color(0xFFC41A3B),
                        autofocus: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.white,),
                          border: InputBorder.none,
                          hintText: 'Searching...',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                  else{
                    this.searchBtn = Icon(Icons.search, color: Colors.white,);
                    this.appbarTitle = Center( child: Text('Home Page'),);
                  }
                });
              },
            )
          )
        ],
      ),
      body: Center(),
    );
  }
}
