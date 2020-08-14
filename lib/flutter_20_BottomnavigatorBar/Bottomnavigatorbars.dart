import 'package:flutter/material.dart';
import 'More.dart';
import 'Search.dart';
import 'Cart.dart';
import 'Home.dart';
import 'Department.dart';
import 'package:flutter_widget/flutter_11_GridView/GridViews.dart';
import 'package:flutter_widget/flutter_18_Stepped_expaned_List_TextFormField/Stepepd.dart';
class BottomNav extends StatelessWidget {
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
  String appbarTitle = 'Bottom navigator bar';
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
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
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Home(),
          Department(),
          Cart(),
          SteppedS(),
          GridViews()
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.white,
              labelColor: Color(0xFFC41A3B),
              labelStyle: TextStyle(fontSize: 12),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide.none,
                insets:  EdgeInsets.fromLTRB(50, 0, 50, 40),
              ),
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home, size: 24,),
                  text: 'Home page',
                ),
                Tab(
                  icon: Icon(Icons.category, size: 24,),
                  text: 'Department',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart, size: 24,),
                  text: 'Cart',
                ),
                Tab(
                  icon: Icon(Icons.search, size: 24,),
                  text: 'Search',
                ),
                Tab(
                  icon: Icon(Icons.more, size: 24,),
                  text: 'More',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
