import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget{
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{
  bool _toggleVisibility = true;
  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Your Email or ID",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        )
      ),
    );
  }

  Widget _buildPasswordField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
        ),
        suffixIcon:IconButton(
          onPressed: (){
            setState(() {
              _toggleVisibility = false;
            });
          },
          icon: Icon(Icons.visibility_off),
        )
      ),
      obscureText: _toggleVisibility,
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign In", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)
              ),
              Text(
                "To complete your Pledge to plant a Tree!", textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
              SizedBox(height: 20.0),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/orange1.PNG"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5.0)
                    )
                  ]
                ),
              ),

              SizedBox(height: 60.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Forgotten Password?", style: TextStyle(fontSize: 18.0, color: Colors.lightBlue, fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 10.0,),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextField(),
                      SizedBox(height: 20.0,),
                      _buildPasswordField(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                ),
              ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Dont't have an account?", style: TextStyle(color: Colors.grey, fontSize: 18.0)),
                SizedBox(width: 10.0),
                Text("Sign Up", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 18.0)),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}