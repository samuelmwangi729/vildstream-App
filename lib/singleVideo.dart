import 'package:flutter/material.dart';
Widget singlevideo(id,poster,title){
  return Scaffold(
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
      body: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              ClipPath(
                  clipper: MyClipper(),
                  child:Container(
                 child: Column(
                    children: <Widget>[
                      Expanded(child: Stack(
                        children: <Widget>[
                          Image.asset(poster,
                          height: 400,
                          fit: BoxFit.cover
                          ),
                        Positioned(
                          top: 70,
                          left: 30,
                          right: 30,
                          child: Center(
                            child: Text(
                              '$title',
                              style: TextStyle(
                                color: Colors.white,fontSize:30,fontWeight: FontWeight.bold,backgroundColor: Colors.black.withOpacity(.1)
                                )
                            ),
                          )
                        ),                    
                        Positioned(
                              top: 150,
                            left: 90,
                            right: 60,
                            child: Material(
                              color: Colors.black.withOpacity(.0),
                              child:InkWell(
                              onTap: (){
                              print('playing video id $id');
                              },
                              child: Icon(Icons.play_circle_filled,
                              color:Colors.red,
                              size:100
                              )
                              )
                              ),
                        ),
                        ]
                      ))
                    ]
                  ),
                  height: 350,
                  width: double.infinity,
                )
                ),
            ],
          ),
          Container(
            child: Text('Video description goes on here',
            style: TextStyle(fontSize: 20)
            )
          ),
          _backButton(),
        ],),
      ),
      ),
  );
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
class _backButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
            Navigator.pop(context);
          },
          splashColor: Colors.red,
          child: Text('Back'),
          );
  }
}