import 'package:flutter/material.dart';
import 'package:news1/%20categories/categoy_item.dart';
import 'package:news1/model/categry_model.dart';
import 'package:news1/my_theme.dart';

class CategoryWidget extends StatelessWidget {
var categoryList =Category.getCategory();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text('Pick Your Category \n of interst',
           style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.bold,
             color: MyTheme.blackColor,
           ),
           ),
           Expanded(
             child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 18,
               crossAxisSpacing: 18,),

                   itemBuilder:(context, index) {
                     return Category_item(category: categoryList[index],index: index);
                   },
               itemCount: categoryList.length,
             ),
           )
         ],
       ),
    );
  }
}
