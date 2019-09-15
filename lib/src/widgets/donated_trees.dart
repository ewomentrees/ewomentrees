import 'package:flutter/material.dart';

class DonatedTrees extends StatefulWidget{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double donation;
  final double ratings;
  DonatedTrees({this.id, this.name, this.imagePath, this.category, this.donation, this.ratings});

  @override
  _DonatedTreesState createState() => _DonatedTreesState();
}

class _DonatedTreesState extends State<DonatedTrees>{
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover,)
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        SizedBox(width: 20.0),
                        Text(
                          "("+ widget.ratings.toString()+" Reviews)",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.donation.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    Text(
                      "My Pledge",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}