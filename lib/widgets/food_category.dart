import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/data/food_category.dart';
import 'package:fooddelieveryapp/models/category_model.dart';
import 'package:fooddelieveryapp/widgets/food_card.dart';

class FoodCategory extends StatelessWidget {
  List<CategoryModel>  _categories = category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imgUrl: _categories[index].imagePath,
            noOfKind: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
