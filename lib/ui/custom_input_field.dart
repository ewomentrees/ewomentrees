import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Icon iconField;
  final String hintText;

  CustomInputField(this.iconField, this.hintText);

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
                child: iconField,
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
                        hintText: hintText),
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
