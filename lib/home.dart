import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeWidget(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Vildstream Dashboard'),
      leading: Icon(Icons.menu,color:Colors.black),
      backgroundColor: Color(0xFF0B3800).withOpacity(.09),
    elevation: 0,
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.all(6),
        child: Row(
          children: <Widget>[
            Icon(Icons.search,color: Colors.black,),
          ],
        )
      )
    ],
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 300.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFF0B3800).withOpacity(.09),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: <Widget>[
            Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width:30.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.thumb_up,color:Colors.white)
                        ),SizedBox(width:5),
                        Text('Total Likes',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color:Colors.black
                            ),
                            children:[
                              TextSpan(text:"500\n",
                            style: Theme.of(context).textTheme.title.copyWith(
                              fontWeight: FontWeight.bold,
                            )
                            ),
                             TextSpan(text:"Likes",
                            style:TextStyle(
                              height: 2,
                              fontSize:14,
                            ),
                            ),
                            ],
                           )
                        ),
                      )
                  ],)
                ],
              ),
            ),
            SizedBox(width:20),
             Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
              ),
              child: Column(
                children: <Widget>[
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 30.0,
                            width:30.0,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.thumb_up,color:Colors.white)
                          ),SizedBox(width:5),
                          Text('Total Likes',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis
                          )
                        ],
                      ),
                      ),
                    Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      color:Colors.black
                                    ),
                                    children:[
                                      TextSpan(text:"50\n",
                                    style: Theme.of(context).textTheme.title.copyWith(
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                    TextSpan(text:"Likes",
                                    style:TextStyle(
                                      height: 2,
                                      fontSize:14,
                                    ),
                                    ),
                                    ],
                                  )
                                ),
                              )
                             ],
                   ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width:30.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.thumb_up,color:Colors.white)
                        ),SizedBox(width:5),
                        Text('Total Likes',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color:Colors.black
                              ),
                              children:[
                                TextSpan(text:"500\n",
                              style: Theme.of(context).textTheme.title.copyWith(
                                fontWeight: FontWeight.bold,
                              )
                              ),
                               TextSpan(text:"Likes",
                              style:TextStyle(
                                height: 2,
                                fontSize:14,
                              ),
                              ),
                              ],
                             )
                          ),
                        )
                    ],)
                  ],
                ),
              ),
            ),
            SizedBox(width:10),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Column(
                  children: <Widget>[
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 30.0,
                              width:30.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.thumb_up,color:Colors.white)
                            ),SizedBox(width:5),
                            Text('Total Likes',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis
                            )
                          ],
                        ),
                        ),
                      Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        color:Colors.black
                                      ),
                                      children:[
                                        TextSpan(text:"50\n",
                                      style: Theme.of(context).textTheme.title.copyWith(
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                      TextSpan(text:"Likes",
                                      style:TextStyle(
                                        height: 2,
                                        fontSize:14,
                                      ),
                                      ),
                                      ],
                                    )
                                  ),
                                )
                               ],
                     ),
                  ],
                ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}