import 'package:ewomentrees/ui/custom_input_field.1.dart';
import 'package:ewomentrees/ui/custom_input_field.dart';
//import 'package:ewomentrees/ui/custom_password_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget{
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
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
                  CustomInputField(Icon(Icons.person, color: Colors.white), "Email"),
                  CustomInputField1(),
                  CustomInputField1(),
                  Container(
                    width: 150.0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                      },
                      child: Text(
                        "Sign Up", 
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250.0,
                    child: Text("No account? Sign Up", style: TextStyle(fontSize: 20.0, color: Colors.redAccent, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
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