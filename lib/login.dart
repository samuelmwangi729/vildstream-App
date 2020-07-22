import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin: Alignment.topCenter,
            colors:[
              Colors.red[900],
              Colors.orange[700],
              Colors.orange[400],
            ]
          )
        ),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(30),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Login to Vildstream',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                  SizedBox(height:20),
                  Text(
                    'Welcome Back',
                    style: TextStyle(color:Colors.white)
                  )
                ]
              )
            ),
            Expanded(
              child: Container(
               decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50)
                    )
               ),
               child:Padding(
                 padding:EdgeInsets.all(20),
                 child: Column(
                   children: <Widget>[
                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                           BoxShadow(
                             color: Color.fromRGBO(100,200, 50, .3)
                           )
                         ]
                       ),
                       child: Column(
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               border: Border(bottom: BorderSide(color: Colors.blue))
                             ),
                             child: TextField(
                               keyboardType: TextInputType.emailAddress,
                               decoration: InputDecoration(
                                 hintText: "Email Address",
                                 hintStyle: TextStyle(
                                   color: Colors.black,
                                 )
                               )
                             ),
                           ),
                           Container(
                             decoration: BoxDecoration(
                               border: Border(bottom: BorderSide(color: Colors.blue))
                             ),
                             child: TextField(
                               keyboardType: TextInputType.emailAddress,
                               obscureText: true,
                               decoration: InputDecoration(
                                 hintText: "Password",
                                 hintStyle: TextStyle(
                                   color: Colors.black
                                 )
                               )
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: MaterialButton(onPressed: (){},
                             textTheme: ButtonTextTheme.primary,
                             color: Colors.red,
                             minWidth: MediaQuery.of(context).size.width,
                             child: Text('Login'),
                             ),
                           ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(onPressed: (){},
                           textTheme: ButtonTextTheme.primary,
                           color: Colors.blue,
                           minWidth: MediaQuery.of(context).size.width,
                           child: Text('Login with Facebook'),
                           ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(onPressed: (){},
                           textTheme: ButtonTextTheme.primary,
                           color: Colors.red,
                           minWidth: MediaQuery.of(context).size.width,
                           child: Text('Login with Google'),
                           ),
                            )
                         ],
                       )
                     )
                   ],
                 )
               )
              )
            )
          ],
        )
      )
    );
  }
}