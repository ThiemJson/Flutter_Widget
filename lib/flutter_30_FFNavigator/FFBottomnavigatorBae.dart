import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

class FFBottomnavigatorBarS extends StatelessWidget {
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
  String appbarTitle = 'Bottom Navigatorbar';
  int _selectedIndex = 0 ;
  String item ='';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: Center(
        child: Text(item, style: TextStyle(fontSize: 50),),
      ),
      bottomNavigationBar: FFNavigationBar(
        onSelectTab: (value){
          setState(() {
            _selectedIndex = value;
            item = value.toString();
          });
        },
        theme: FFNavigationBarTheme(
          selectedItemBackgroundColor: Color(0xFFC41A3B),
        ),
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.category,
            label: 'Category',
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'Search',
            animationDuration: Duration(seconds: 5),
          ),
          FFNavigationBarItem(
            iconData: Icons.shopping_cart,
            label: 'Cart',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,

      ),
    );
  }
}
