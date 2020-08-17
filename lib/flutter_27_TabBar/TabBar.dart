import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  String appbarTitle = 'This is a Tabbar Custom';
  TabController  _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        centerTitle: true,
        elevation: 20,
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 5.0,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.drafts, color: Colors.white, size: 35,),
              text: 'Nháp',
            ),
            Tab(
              icon: Icon(Icons.payment , color: Colors.white, size: 35),
              text: 'Chi trả',
            ),
            Tab(
              icon: Icon(Icons.drafts, color: Colors.white, size: 35),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text('Draft', style: TextStyle(fontSize: 40,)),
          ),
          Center(
            child: Text('Payments', style: TextStyle(fontSize: 40,)),
          ),
          Center(
            child: Text('Nothing special', style: TextStyle(fontSize: 40,)),
          ),
        ],
      ),
    );
  }
}
