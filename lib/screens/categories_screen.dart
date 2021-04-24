import 'package:Meals_App/widgets/category_item.dart';
import 'package:Meals_App/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GridView( 
        padding: EdgeInsets.all(15),       
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(catData.id,catData.title, catData.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
    
    );    
  }
}
