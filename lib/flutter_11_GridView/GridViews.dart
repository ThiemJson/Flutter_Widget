import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class GridViews extends StatelessWidget {
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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  String appbarTitle = 'Gird Views';
  TabController _tabController ;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        centerTitle: false,
        backgroundColor: Colors.blue,
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 6.0,
          indicatorPadding: EdgeInsets.all(5),
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.face)),
            Tab(icon: Icon(Icons.image)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
          child: Container(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 4,
              children: List.generate(50,
                      (index) => Container(
                        margin: EdgeInsets.all(8),
                        child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: NetworkImage('https://nextphim.com/wp-content/uploads/2019/09/index.jpgsdfdsgf.jpg'),
                                width: 120,
                                height:120,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                        )
                      ),
                  ),
          ),
        ),
      ),
      );
    }
  }
