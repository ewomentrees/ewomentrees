import 'package:flutter/material.dart';

class PledgeToPlant extends StatelessWidget{

  final textStyle = TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 350,
              child: Text(
                "Donate to help us plant trees in Sierra Leone. By dedicating a tree to Sierra Leone, you are promoting reforestation to help our communities. Every dollar spent on reforestation generates USD12.50 in local downstream income and benefits. That’s huge impact for every dollar you donate! Minimum pledge is 1 tree (4.99 USD). Tap the arrows to indicate the number trees to pledge.", textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}