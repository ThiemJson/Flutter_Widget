import 'package:flutter/material.dart';

class RefreshIndicatorS extends StatelessWidget {
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
  String appbarTitle = 'Refresh  Indicator';
  Future<Null> refreshList() async{
    await Future.delayed(Duration(seconds: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: RefreshIndicator(
        //strokeWidth: 1,
        backgroundColor: Colors.blueAccent,
        onRefresh: refreshList,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 50,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Text('Item ${index}', style: TextStyle(fontSize: 20,),),
              ),
            );
          },
        ),

      ),
    );
  }
}
