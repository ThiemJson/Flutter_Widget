import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class SliverAppbars extends StatelessWidget {
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
  String appbarTitle = 'Sliver Appbar';
  List<Widget> _getItem(){
    List<Card> _cards = [];
    for(int i = 0 ; i < 50 ; i ++ ){
      _cards.add(new Card(
        elevation: 10,
        child: ListTile(
          title: Text('Item ${i+1}'),
          leading: Icon(Icons.person),
        ),
      ));
    };
    return _cards;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            //snap: false,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('IRON MAN'),
              background: Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5aa16421-e20b-4a8d-9428-fe192c4f41d2/dd4julz-6e6f84df-e13c-4f06-9cf1-bac4a6d1fec8.png/v1/fill/w_1600,h_2286,q_80,strp/avengers_endgame___thor_and_the_bifrost_by_mizuriofficial_dd4julz-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvNWFhMTY0MjEtZTIwYi00YThkLTk0MjgtZmUxOTJjNGY0MWQyXC9kZDRqdWx6LTZlNmY4NGRmLWUxM2MtNGYwNi05Y2YxLWJhYzRhNmQxZmVjOC5wbmciLCJoZWlnaHQiOiI8PTIyODYiLCJ3aWR0aCI6Ijw9MTYwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC81YWExNjQyMS1lMjBiLTRhOGQtOTQyOC1mZTE5MmM0ZjQxZDJcL21penVyaW9mZmljaWFsLTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.cnUx0qqe_cJaud0yK1JVFwYpN0aeS1FzQICzayXx434',
                fit: BoxFit.cover,),
              centerTitle: true,
            ),
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.person),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_getItem()),
          ),
        ],
      ),
    );
  }
}

