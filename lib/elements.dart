import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main.dart';
class DrawerElements extends StatelessWidget {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
        new UserAccountsDrawerHeader(
              accountName: Text('samuel mwangi'), accountEmail: Text('samuelmwangi729@gmail.com'),
             currentAccountPicture:
            GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 70.0,color: Colors.red), 
              )
            ),
            decoration: 
            BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                  Colors.red,
                  Colors.black,
                ]
              )
            ),
        ),
        new InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MyApp();
            }));
          },
          child: Center(
            child: ListTile(
                  title: Text('Home',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.home,color: Colors.red),
                  dense: true,
                ),
          ),
        ),
       Divider(
          height: 1,
          color: Colors.red
        ),
         new InkWell(
          onTap:(){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            //   return Categories();
            // },));
          },
          child: Center(
            child: ListTile(
                  title: Text('Featured Videos',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.video_call,color: Colors.red),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.red
        ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('Trailers',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.train,color: Colors.red),
                  dense: true,
                ),
          ),
        ),
         Divider(
          height: 1,
          color: Colors.red
        ),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('My Categories',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading:  SvgPicture.asset('assets/menu.svg',
                 width: 25,
                 alignment: Alignment.centerLeft,
                 fit: BoxFit.fitHeight,
                 ),
                  dense: true,
                ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.red
        ),
        Divider(),
         new InkWell(
          onTap:(){},
          child: Center(
            child: ListTile(
                  title: Text('About Us',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.help,color: Colors.red),
                  dense: true,
                ),
          ),
        ),
        Divider(),
         new InkWell(
          onTap:(){},
          child: Padding(
            padding: EdgeInsets.only(top:10,left:100),
            child: ListTile(
                  title: Text('Version 1.0',style:TextStyle(fontFamily:'Times New Roman',fontWeight: FontWeight.bold,color:Colors.red)),
                  dense: true,
                ),
          ),
        ),

          ]
        ),
    );
  }
}