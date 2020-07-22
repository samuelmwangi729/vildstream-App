import 'package:flutter/material.dart';
import  'register.dart';
class login extends StatelessWidget {
  TextEditingController email =new TextEditingController();
  TextEditingController password = new TextEditingController();
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
              Colors.black,
              Colors.orange[400]
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
              child: Wrap(
                children: <Widget>[
                   Container(
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
                                 controller: email,
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
                                 controller: password,
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
                           ],
                         )
                       ),
                       SizedBox(height: 50,),
                       InkWell(
                          child: Text('Forgot Passord', 
                            style: TextStyle(
                            color: Colors.blue
                            )
                          ),
                       ),
                       SizedBox(height: 20,),
                       Container(
                         height: 50,
                         margin: EdgeInsets.symmetric(horizontal: 50),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.blue,
                           gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             colors:[
                               Colors.red[500],
                               Colors.black
                             ]
                           )
                         ),
                         child: Center(
                           child:Text('Login', style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:15))
                         )
                       ),
                       SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>register()));
                        },
                          child: Text(
                          "Don\'t Have An Account? Register",
                          style:TextStyle(color:Colors.blue,fontWeight:FontWeight.w400)
                          ),
                       ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(
                           "Or Try Using Social Media",
                          style:TextStyle(
                             decoration: TextDecoration.underline
                          )
                         ),
                       ),
                       SizedBox(height:30),
                       Row(
                         children: <Widget>[
                           Expanded(
                               child: Container(
                               height: 50,
                               decoration: BoxDecoration(
                                 color:Colors.red,
                                 borderRadius: BorderRadius.circular(50)
                               ),
                                  child: Center(child: Text('Gmail',style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:15))),
                               ),
                           ),
                           SizedBox(width: 35,),
                           Expanded(
                              child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                  color:Colors.blue,
                                  borderRadius: BorderRadius.circular(50)
                                  ),
                              child: Center(child: Text('Facebook',style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:15))),
                              ),
                           ),
                         ],
                       ),
                     ],
                   )
                 )
                ),
                ],
              )
            )
          ],
        )
      )
    );
  }
}