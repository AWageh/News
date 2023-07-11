import 'package:flutter/material.dart';
import 'package:news1/model/categry_model.dart';

class Category_item extends StatelessWidget {
  Category category;
  int index;

  Category_item({required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            color: category.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),

              bottomRight: Radius.circular(index % 2 == 0 ? 20 : 0),
              bottomLeft: Radius.circular(index % 2 != 0 ? 20 : 0),

            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(category.imagePath,
            height: 90,
            ),
            Text(category.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
            ),
          ],
        ),
      ),
    );
  }
}
