import 'package:ewomentrees/src/data/tree_data.dart';
import 'package:ewomentrees/src/models/tree_model.dart';
import 'package:ewomentrees/src/widgets/donated_trees.dart';
//import 'package:ewomentrees/src/widgets/home_top.dart';
import 'package:ewomentrees/src/widgets/home_top_info.dart';
import 'package:ewomentrees/src/widgets/tree_category.dart';
import 'package:flutter/material.dart';
import 'package:ewomentrees/src/widgets/search_available_trees.dart';

class HomePage extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage>{

  List<OurTree> _trees = ourtrees;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: <Widget>[
          HomeTopInfo(),
          SizedBox(height: 10.0,),
          TreeCategory(),
          SizedBox(height: 10.0),
          SerachAvailableTrees(),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently planted!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: null,
                  child: Text(
                  "View All!",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            children: _trees.map(_buildTreeItems).toList(),
          )
        ],
      ),
    );
  }
}

Widget _buildTreeItems(OurTree aTree){
  return Container(
    margin: EdgeInsets.only(bottom: 20.0),
    child: DonatedTrees(
      id: aTree.id,
      name: aTree.name,
      imagePath: aTree.imagePath,
      category: aTree.category,
      donation: aTree.donation,
      ratings: aTree.ratings,
    ),
  );
}
