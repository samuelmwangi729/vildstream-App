import 'package:flutter/material.dart';
import 'main.dart';
Widget Description(title,path){
  return Scaffold(
    appBar: AppBar(
        title: Text(title+' Videos',
        style: TextStyle(
          fontSize: 17
        )
        ),
        centerTitle: true,
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
    body: Container(
      color: Colors.black,
      child:Column(
        children: <Widget>[
           ClipPath(
              clipper: MyClipper(),
              child:Container(
             child: Column(
                children: <Widget>[
                  Expanded(child: Stack(
                    children: <Widget>[
                      Image.asset(path,
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover
                      ),
                    Center(
                      child: Positioned(
                        top: 70,
                        left: 10,
                        right: 10,
                        child: Text(
                          title+' Category',
                          style: TextStyle(
                            color: Colors.white,fontSize:30,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black12.withOpacity(.4)
                            )
                        )
                      ),
                    ),
                    ]
                  ))
                ]
              ),
              height: 300,
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
            SizedBox(
              height: 25,
              child: Chip
                      (
                        padding: EdgeInsets.only(bottom: 5),
                      label: Text(
                      'Videos Under '+ title+' Category',
                      style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      backgroundColor: Colors.yellow,
                      )
            ),
            Divider(),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    Colors.red,Colors.black
                  ]
                )
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AllVideos(title,path),
                  AllVideos(title,path),
                  AllVideos(title,path),
                ],
              )
            ),
            SizedBox(height: 1,),
        ],
      )
    )
  );
}


class AllVideos extends StatelessWidget {
  final String movieTitle;
  final String poster;
  AllVideos(this.movieTitle, this.poster);
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap:(){
      //  Navigator.of(context).push(MaterialPageRoute(builder: (context){
      //    return Description(this.title,this.path);
      //  }));
    },
    child:Column(
      children: <Widget>[
      Card(elevation: .7,
        child: Image.asset
          (
            poster,
            fit:BoxFit.cover,
            width:200,
            height:200
          )
      ),
      SizedBox(height: 1,),
      Text(movieTitle,
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