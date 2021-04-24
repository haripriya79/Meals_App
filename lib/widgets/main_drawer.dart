import 'package:Meals_App/screens/filter_screen.dart';
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);
Widget buildsettings(String text, IconData icon,Function funhandler){
return ListTile(
            leading: Icon(
              icon,
              size: 26,
            ),
            title: Text(
              text,
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: funhandler,
          );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildsettings('Meals', Icons.restaurant,
          (){
           Navigator.of(context).pushReplacementNamed('/'
      
    );
          }),
          buildsettings('Filters', Icons.settings,
          (){Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName
      
    );}),
        ],
      ),
    );
  }
}
