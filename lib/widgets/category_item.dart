import 'package:flutter/material.dart';
import 'package:meal/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

//
//  void selectCategory(BuildContext ctx){
//    Navigator.of(ctx).push(MaterialPageRoute(builder: (c){
//      return CategoryMealsScreen(id,title);
//    }));
//  }
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        borderRadius: BorderRadius.circular(15),
        splashColor: Colors.deepPurple,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                shadows: [Shadow(offset: Offset(1.0, 1.0), blurRadius: 10)]),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                color.withOpacity(0.7),
                color,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
