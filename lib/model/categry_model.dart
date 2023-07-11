import 'package:flutter/material.dart';
import 'package:news1/my_theme.dart';

class Category{
  String id;
  String title;
  String imagePath;
  Color backgroundColor;

  Category({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.backgroundColor
});

  static List <Category>getCategory(){
    return [
      Category(id: 'sports',
        title: 'sports',
        imagePath: 'assets/images/ball.png',
        backgroundColor: MyTheme.redColor),

      Category(id: 'politics',
          title: 'politics',
          imagePath: 'assets/images/Politics.png',
          backgroundColor: MyTheme.darkBlueColor),

      Category(id: 'health',
          title: 'health',
          imagePath: 'assets/images/health.png',
          backgroundColor: MyTheme.pinkColor,
      ),

      Category(id: 'bussiness',
          title: 'bussiness',
          imagePath: 'assets/images/bussines.png',
          backgroundColor: MyTheme.brownColor),

      Category(id: 'environment',
          title: 'environment',
          imagePath: 'assets/images/environment.png',
          backgroundColor: MyTheme.blueColor),

      Category(id: 'science',
          title: 'science',
          imagePath: 'assets/images/science.png',
          backgroundColor: MyTheme.yellowColor),

    ];
  }
}