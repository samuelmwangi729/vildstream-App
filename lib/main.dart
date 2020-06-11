import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'elements.dart';
import 'description.dart';
import 'videos.dart';
import 'featured.dart';
import 'trailers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isLoggedIn=false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VildStream',
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('VildStream',
        style: TextStyle(
          fontSize: 30
        )
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: <Widget>[
          new Padding(
            padding: EdgeInsets.only(right:20),
            child:Icon(Icons.email)
          ),
           new Padding(
            padding: EdgeInsets.only(right:20),
            child:Icon(Icons.search)
          )
        ],
      ),
      drawer: Drawer(
       child:  DrawerElements()
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child:Container(
             child: Column(
                children: <Widget>[
                  Expanded(child: Stack(
                    children: <Widget>[
                      Image.asset('assets/banner.jpg',
                      height: 300,
                      fit: BoxFit.cover
                      ),
                    Positioned(
                      top: 70,
                      left: 30,
                      right: 30,
                      child: Text(
                        'VildStream Videos',
                        style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.bold)
                      )
                    ),
                    Positioned(
                       top: 120,
                      left: 90,
                      right: 60,
                      child: Text('Subscription Based Video Streaming Website',
                      style:TextStyle(color: Colors.white)
                      )
                      )
                    ]
                  ))
                ]
              ),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors:[
                    Colors.red,
                    Colors.black,
                  ]
                )
              ),
            )
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 40,
                 decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors:[
                    Colors.black.withOpacity(.9),
                    Colors.red.withOpacity(.6),
                  ]
                )
              ),
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.only(right:20,bottom:5,top:5) ,
                        child:InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Videos()));
                          },
                          child: Chip(
                          label: Text(
                          'All Videos',
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                        backgroundColor: Colors.yellow,
                        )
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(right:20,bottom:5,top:5) ,
                        child:InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>trailer()));

                          },
                          child: Chip(
                          label: Text(
                          'Trailers',
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                        backgroundColor: Colors.yellow,
                        )
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(right:20,bottom:5,top:5) ,
                        child:InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>featured()));
                          },
                          child: Chip(
                          label: Text(
                          'Featured Videos',
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                        backgroundColor: Colors.yellow,
                        )
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(right:20,bottom:5,top:5) ,
                        child:InkWell(
                          onTap:(){},
                          child: Chip(
                          label: Text(
                          'My Categories',
                          style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                        backgroundColor: Colors.yellow,
                        )
                        )
                      ),
                    ],
                  ),
                ),
                //the movies categories
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('VildStream Categories',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )
                  ),
                ),
                SizedBox(height: 2,),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        offset:Offset(0.0,4.0),
                        blurRadius: 10
                      )
                    ],
                  ),
                  width: double.infinity,
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8),
                      child: CategoryCard('assets/cat.jpg','Comics'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat1.jpg','Science'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat2.jpg','Automotives'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat3.jpg','Blog'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat4.jpg','Education'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat5.jpg','StreamShots'),
                      ),
                       Padding(padding: EdgeInsets.only(top:1),
                      child: CategoryCard('assets/cat6.jpg','Lifestyle'),
                      )
                    ],
                  )
                )
              ],
            ),
          ]
        ),
      )
    );
  }
}

class  MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height-80);
    path.quadraticBezierTo(
      size.width / 2, size.height,  size.width, size.height-80
      );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}

class CategoryCard extends StatelessWidget {
  final String path;
  final String title;
  CategoryCard(this.path,this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap:(){
       Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return Description(this.title,this.path);
       }));
    },
    child:Column(
      children: <Widget>[
      Card(elevation: .7,
        child: Image.asset
          (
            path,
            fit:BoxFit.cover,
            width:150,
            height:160
          )
      ),
      SizedBox(height: 1,),
      Text(title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20
      )
      )
    ],
    )
  );
     
  }
}