import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/data/FoodData.dart';
import 'package:fooddelieveryapp/widgets/BoughtFood.dart';
import 'package:fooddelieveryapp/widgets/Home_top.dart';
import 'package:fooddelieveryapp/widgets/food_category.dart';
import 'package:fooddelieveryapp/widgets/search_field.dart';

import '../models/food_model.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _food = Foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: <Widget>[
          HomeTop(),
          FoodCategory(),
          SizedBox(
            height: 20,
          ),
          SearchField(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Frequently Bought Foods',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(children: _food.map(_buildFoodItems).toList())
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        id: food.id,
        category: food.category,
        discount: food.discount,
        imagePath: food.imagePath,
        name: food.name,
        price: food.price,
        rating: food.rating,
      ),
    );
  }
}
