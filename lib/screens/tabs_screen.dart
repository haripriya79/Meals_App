import 'package:Meals_App/screens/categories_screen.dart';
import 'package:Meals_App/screens/favourite_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  TabScreen({Key key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.category),
            text: 'category',
          ),
           Tab(
            icon: Icon(Icons.star),
            text: 'Favorites',
          ),
        ],),

      ),
      body: TabBarView(children: [
        CategoriesScreen(),
        FavouritesScreen(),

      ],),
      
    ),
    );
  }
}
