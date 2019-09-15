//import 'package:ewomentrees/models/tree_model_bak.dart';
import 'package:ewomentrees/src/data/tree_data.dart';
import 'package:ewomentrees/src/models/tree_model.dart';
import 'package:ewomentrees/src/widgets/donated_trees.dart';
import 'package:ewomentrees/src/widgets/home_top_info.dart';
import 'package:ewomentrees/src/widgets/search_available_trees.dart';
import 'package:ewomentrees/src/widgets/tree_category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final textStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final List<OurTree> _trees = ourtrees;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reforestation to Help Communities, Marginalized Groups and Girls", 
          style: TextStyle(color: Colors.black, fontSize: 17.0),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
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
        ],
      ),
      //bottomNavigationBar: _buildTotalContainer(),
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