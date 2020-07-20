import 'package:flutter/material.dart';
import 'register.dart';
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(1),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.red,
            ]
          ),
        ),
        child: Center(
          child:Padding(padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.white.withOpacity(.7),
              borderRadius:BorderRadius.circular(20)
            ),
            height: 420,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text('Login your VildStream Account',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Email Address'
                      )
                    )
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.lock),
                    title: TextField(
                       obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Your Password'
                      )
                     
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      child: Center(
                        child: Material(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(200),
                          elevation: .5,
                           child:ListTile(
                          leading: Padding(
                           padding: const EdgeInsets.only(left: 28.0),
                            child: Icon(Icons.keyboard_arrow_right,color: Colors.white),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text('Sign In',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )),
                          )
                  )               
                    ),
                      ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    onTap:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>register()));
                    },
                      child: Center(
                        child: Material(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(200),
                          elevation: .5,
                           child:ListTile(
                          leading: Padding(
                           padding: const EdgeInsets.only(left: 28.0),
                            child: Icon(Icons.person_add,color: Colors.white),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Text('Sign Up',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )
                            ),
                          )
                  )               
                    ),
                      ),
                  )
                ),
                Padding(padding: EdgeInsets.only(left:100),
                child:InkWell(
                    child: Text('Forgot Your Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                    )
                    ),
                )
                ),
                
                MaterialButton(
                  color: Colors.blue.withOpacity(.4),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
            ],)
          )
          )
        ),
      )
    );
  }
}