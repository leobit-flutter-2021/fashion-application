import 'package:flutter/material.dart';
import 'package:fashion_application/secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Discovery',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(3.0),
              children: <Widget>[
                listItem(
                    'assets/the_fourth_image.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 35.0),
                listItem(
                    'assets/the_second_image.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 35.0),
                listItem('assets/the_third_image.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 35.0),
                listItem(
                    'assets/the_seventh_image.jpeg', 'assets/chanellogo.jpg')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(26.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/the_seventh_image.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Kristi',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '34 mins ago',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              Icon(Icons.room_service_sharp,
                                  color: Colors.red, size: 20.0)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends.',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(
                                    heroTag: 'assets/the_first_image.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/the_first_image.jpeg',
                            child: Container(
                              height: 200.0,
                              width:
                                  (MediaQuery.of(context).size.width - 50.0) /
                                      2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/the_first_image.jpeg',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(
                                        heroTag:
                                            'assets/the_sixth_image.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/the_sixth_image.jpeg',
                                child: Container(
                                  height: 99.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/the_sixth_image.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(
                                        heroTag:
                                            'assets/the_fifth_image.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/the_fifth_image.jpeg',
                                child: Container(
                                  height: 96.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/the_fifth_image.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Branded clothing',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          height: 25.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              '# Beauty',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: Colors.brown),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.favorite,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        SizedBox(width: 5.0),
                        Text(
                          '1.7k',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '325',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.gif,
                                color: Colors.red,
                                size: 20.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 15.0)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 15.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 15.0)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 15.0)),
          ],
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xFF916144)),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
