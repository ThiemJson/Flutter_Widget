import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class FittedBoxs extends StatelessWidget {
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
  String appbarTitle = 'Fitted Box';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle), centerTitle: true,),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SuperHeros(name: 'Ant Man',power: 'Có khả năng thu nhỏ người bằng con kiến',proj: 'Hệ thủy',urlImage: 'https://photo-1-baomoi.zadn.vn/w1000_r1/2019_05_01_329_30551028/953ec0e61ea7f7f9aeb6.jpg',),
          SuperHeros(name: 'Thor',power: 'Siêu bền, siêu mạnh, sử dụng búa thần Mjonir',proj: 'Hệ hỏa',urlImage: 'https://i.a4vn.com/2019/10/23/dao-dien-thor-xac-nhan-nguoi-da-korg-se-tro-lai-trong-phan-4-thor-love-and-thunder-2b8085.jpg',),
          SuperHeros(name: 'Iron man',power: 'Có khả năng sử dụng giáp vô tận, trí thông minh vượt trội',proj: 'Hệ thủy',urlImage: 'https://znews-photo.zadn.vn/w660/Uploaded/mdf_rkxrxd/2019_05_02/iron_man_1.jpg',),
          SuperHeros(name: 'Ant Man',power: 'Có khả năng thu nhỏ người bằng con kiến',proj: 'Hệ thủy',urlImage: 'https://photo-1-baomoi.zadn.vn/w1000_r1/2019_05_01_329_30551028/953ec0e61ea7f7f9aeb6.jpg',),
          SuperHeros(name: 'Thor',power: 'Siêu bền, siêu mạnh, sử dụng búa thần Mjonir',proj: 'Hệ hỏa',urlImage: 'https://i.a4vn.com/2019/10/23/dao-dien-thor-xac-nhan-nguoi-da-korg-se-tro-lai-trong-phan-4-thor-love-and-thunder-2b8085.jpg',),
          SuperHeros(name: 'Iron man',power: 'Có khả năng sử dụng giáp vô tận, trí thông minh vượt trội',proj: 'Hệ thủy',urlImage: 'https://znews-photo.zadn.vn/w660/Uploaded/mdf_rkxrxd/2019_05_02/iron_man_1.jpg',),
          SuperHeros(name: 'Ant Man',power: 'Có khả năng thu nhỏ người bằng con kiến',proj: 'Hệ thủy',urlImage: 'https://photo-1-baomoi.zadn.vn/w1000_r1/2019_05_01_329_30551028/953ec0e61ea7f7f9aeb6.jpg',),
          SuperHeros(name: 'Thor',power: 'Siêu bền, siêu mạnh, sử dụng búa thần Mjonir',proj: 'Hệ hỏa',urlImage: 'https://i.a4vn.com/2019/10/23/dao-dien-thor-xac-nhan-nguoi-da-korg-se-tro-lai-trong-phan-4-thor-love-and-thunder-2b8085.jpg',),
          SuperHeros(name: 'Iron man',power: 'Có khả năng sử dụng giáp vô tận, trí thông minh vượt trội',proj: 'Hệ thủy',urlImage: 'https://znews-photo.zadn.vn/w660/Uploaded/mdf_rkxrxd/2019_05_02/iron_man_1.jpg',),
          SuperHeros(name: 'Ant Man',power: 'Có khả năng thu nhỏ người bằng con kiến',proj: 'Hệ thủy',urlImage: 'https://photo-1-baomoi.zadn.vn/w1000_r1/2019_05_01_329_30551028/953ec0e61ea7f7f9aeb6.jpg',),
        ],
      ),
    );
  }
}

class SuperHeros extends StatelessWidget {
  final String name;
  final proj;
  final power;
  final urlImage;
  const SuperHeros({
    Key key,
    @required this.name,
    @required this.proj,
    @required this.power,
    @required this.urlImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(24),
          shadowColor: Color(0xFFC41A3B),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFC41A3B))),
                      Row(
                        children: <Widget>[
                          Container(child: Text('Project: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54))),
                          Container(child: Text(proj, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54))),
                        ],
                      ),
                      Container(child: Text(power, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54))),
                    ],
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image(image: NetworkImage(urlImage), fit: BoxFit.cover,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
