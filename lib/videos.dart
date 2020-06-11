import 'package:flutter/material.dart';
import 'singleVideo.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('VildStream Videos',
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
      body: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.black
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: GridView.count(crossAxisCount: 2,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'The Cartoon Network','Comic','assets/cat.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Evil Dragons','Comic','assets/banner.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'The witch Hunters','Comic','assets/cat1.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
             Padding(
              padding: const EdgeInsets.all(0),
              child: _getVideos(1,'Hackers','Comic','assets/banner.jpg'),
            ),
          ],
          ),
        ),
      )
    );
  }
}
class _getVideos extends StatelessWidget {
  final int id;
  final String title;
  final String category;
  final String poster;
  _getVideos(this.id,this.title,this.category,this.poster);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> singlevideo(id,poster,title)));
      },
      child: Container(
        alignment: Alignment.center,
        child:Column(
          children: <Widget>[
            ListTile(
              title: Image.asset(poster,
              height: 100,
              fit: BoxFit.cover
              ),
              subtitle: Center(
                child: Text(title,
                style: TextStyle(
                  fontSize:20,
                fontWeight:FontWeight.bold,
                color: Colors.white
                )
                ),
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.yellow,
              child: Text(category+' Category')
              ),
          ],
        )
      ),
    );
  }
}