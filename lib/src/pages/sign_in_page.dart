import 'package:ewomentrees/ui/custom_input_field.1.dart';
import 'package:ewomentrees/ui/custom_input_field.dart';
//import 'package:ewomentrees/ui/custom_password_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget{
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Material(
                borderRadius: BorderRadius.circular(200),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
            child: Container(
              width: 300,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dedicate_a_tree.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0)
                  )
                ]
              ),
            ),
                  CustomInputField(Icon(Icons.person, color: Colors.white), "Username"),
                  CustomInputField1(),
                  Container(
                    width: 150.0,
                    child: RaisedButton(onPressed: (){}, color: Colors.deepOrange, textColor: Colors.white, 
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text("Login", style: TextStyle(fontSize: 20.0),),
                    ), 
                  ),
                  //Container(
                   // width: 250.0,
                  Divider(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: <Widget>[
                      Text(
                        "Don't have an account?", 
                        style: TextStyle(
                          fontSize: 18.0, 
                          color: Colors.white, 
                          fontWeight: FontWeight.bold)
                      ),
                      SizedBox(width: 10.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/signuppage');
                        },
                        child: Text(
                        "Sign up", 
                        style: TextStyle(
                          fontSize: 18.0, 
                          color: Colors.redAccent, 
                          fontWeight: FontWeight.bold),
                        ),
                      )
                  ],)
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