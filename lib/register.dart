import 'package:flutter/material.dart';
import 'login.dart';
class register extends StatelessWidget {
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
            height: 500,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:0.0),
                  child: Text('Register With Vildstream',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    leading: Icon(Icons.card_membership),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Names'
                      )
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Email Address'
                      )
                    )
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    leading: Icon(Icons.lock),
                    title: TextField(
                       obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password'
                      )
                     
                    )
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: InkWell(
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
                            child: Text('Register',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            )),
                          )
                  )               
                    ),
                      ),
                  )
                ),
                SizedBox(height: 1,),
                Padding(padding: EdgeInsets.only(left:100),
                child:InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login()));
                  },
                    child: Text('Already A Member? Login',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
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