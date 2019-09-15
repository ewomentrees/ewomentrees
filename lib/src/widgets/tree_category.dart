import 'package:flutter/material.dart';
import 'package:ewomentrees/src/data/category_data.dart';
import 'package:ewomentrees/src/models/category_model.dart';
import 'package:ewomentrees/src/widgets/tree_card.dart';

class TreeCategory extends StatelessWidget{
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return TreeCard(
              categoryName: _categories[index].categoryName,
              imagePath: _categories[index].imagePath,
              numberOfItems: _categories[index].numberOftems,
            );
          },
        ),
    );
  }
}