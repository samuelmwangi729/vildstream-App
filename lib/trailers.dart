import 'package:flutter/material.dart';
import 'singleVideo.dart';
class trailer extends StatefulWidget {
  @override
  trailerState createState() => trailerState();
}

class trailerState extends State<trailer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('trailer Videos',
        style: TextStyle(
          fontSize: 25
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
      body: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        _getVideo(1,'The Dragons','assets/banner.jpg','comics'),
        _getVideo(2,'The Wolf','assets/cat.jpg','Action'),
        _getVideo(3,'Hackers Underground','assets/cat4.jpg','Tech'),
      ],
      )
    );
  }
}
class _getVideo extends StatelessWidget {
  final String title;
  final String poster;
  final String category;
  final int id;
  _getVideo(this.id,this.title,this.poster,this.category);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> singlevideo(id,poster,title)));
        },
          child: Container(
          color: Colors.black.withOpacity(.4),
          child: Column(
              children: <Widget>[
                Image.asset(poster,
                height: 124,
                fit: BoxFit.cover
                ),
                Text(title,style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                )),
                Material(
                  color: Colors.red,
                  child: Text(category,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  )
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}