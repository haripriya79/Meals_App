import 'package:Meals_App/widgets/main_drawer.dart';
import 'package:flutter/material.dart';


class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key key}) : super(key: key);
  static const routeName = '/filter-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'),),
      body: Center(child: Text("This is filters"),),
      drawer: MainDrawer(),
    );
  }
}