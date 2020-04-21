import 'package:flutter/material.dart';
import 'package:meal/screens/categories_screen.dart';
import 'package:meal/screens/favorite_screen.dart';
import 'package:meal/widgets/main_drawer.dart';

class TabsScren extends StatefulWidget {
  @override
  _TabsScrenState createState() => _TabsScrenState();
}

class _TabsScrenState extends State<TabsScren> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Meal Ramai'
      ),),
      drawer: MainDrawer(),

      body: _pages[_selectedPageIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category), title: Text('Categories')),

          BottomNavigationBarItem(
              backgroundColor: Colors.red,

              icon: Icon(Icons.favorite), title: Text('Favorites')),
        ],
      ),
    );
  }
}
