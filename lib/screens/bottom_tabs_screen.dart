import 'package:Meals_App/screens/categories_screen.dart';
import 'package:Meals_App/screens/favourite_screen.dart';
import 'package:Meals_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class BottomTabScreen extends StatefulWidget {
  BottomTabScreen({Key key}) : super(key: key);

  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'title': 'Meals',
      'screen': CategoriesScreen(),
    },
    {
      'title': 'Your Favourites',
      'screen': FavouritesScreen(),
    }
  ];
  int _selectedPageIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
  }
}
