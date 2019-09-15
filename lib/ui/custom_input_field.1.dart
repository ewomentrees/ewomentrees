import 'package:flutter/material.dart';

class CustomInputField1 extends StatefulWidget {
  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField1> {
  Icon iconField;
  String hintText;

  bool _toggleVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.deepOrange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.lock, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                width: 200,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        suffixIcon:IconButton(
                          onPressed: (){
                          setState(() {
                            _toggleVisibility = !_toggleVisibility;
                          });
                          },
                          icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility_off),
                        )
                      ),  
                      obscureText: _toggleVisibility,
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

/**Widget _buildTextField(String _isPassword) {
  String hintText;
  if (_isPassword == "Password") {
    hintText = _isPassword;
  } else {
    hintText = "Username";
  }
  return Container(
    child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          hintText: hintText),
      style: TextStyle(fontSize: 20.0, color: Colors.black),
    ),
  );
}**/
