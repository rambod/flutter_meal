import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, String direction,context) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
        onTap: ()=>Navigator.of(context).pushReplacementNamed(direction));
  }

  final List<Map> navMenu = [
    {'title': 'Meals', 'icon': Icons.restaurant,'direction': '/'},
    {'title': 'Filter', 'icon': Icons.settings,'direction': '/filter'},
    {'title': 'About', 'icon': Icons.copyright,'direction': '/'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Check This out',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ...(navMenu.map(
            (e) => buildListTile(e['title'], e['icon'],e['direction'],context),
          )),
//          buildListTile('Meals', Icons.restaurant),
//          buildListTile('Filter', Icons.settings),

//          ListTile(
//              leading: Icon(
//                Icons.restaurant,
//                size: 26,
//              ),
//              title: Text(
//                'Meals',
//                style: TextStyle(
//                  fontSize: 24,
//                  fontWeight: FontWeight.bold,
//                  fontFamily: 'Raleway',
//                ),
//              ),
//              onTap: () => {print('clicked')}),
//          ListTile(
//              leading: Icon(
//                Icons.settings,
//                size: 26,
//              ),
//              title: Text(
//                'Filters',
//                style: TextStyle(
//                  fontSize: 24,
//                  fontWeight: FontWeight.bold,
//                  fontFamily: 'Raleway',
//                ),
//              ),
//              onTap: () => {print('clicked')})
        ],
      ),
    );
  }
}
