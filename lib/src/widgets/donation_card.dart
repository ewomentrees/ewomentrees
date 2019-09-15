import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 75,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.greenAccent,),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_up, color: Colors.greenAccent,)
                  ),
                  Text("1", style: TextStyle(fontSize: 16.0),),
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.greenAccent,)
                  ),
                ],
              )
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dedicate_a_tree.png"),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0)
                  )
                ]
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("My Pledge to Plant Trees", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                Text("\$4.99"),
              ],
            )
          ],
        ),
      ),
    );
  }
}