import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/widgets/meal_item.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    if(widget.favoriteMeals.isEmpty){
      return Scaffold(
//      appBar: AppBar(title: Text('Favorite'),),
        body: Text('You have no favorites yet !! start adding some!'),
      );
    }else{
      return Scaffold(
//      appBar: AppBar(title: Text('Favorite'),),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: widget.favoriteMeals[index].id,
              title: widget.favoriteMeals[index].title,
              imageUrl: widget.favoriteMeals[index].imageUrl,
              affordability: widget.favoriteMeals[index].affordability,
              complexity: widget.favoriteMeals[index].complexity,
              duration: widget.favoriteMeals[index].duration,
            );
          },
          itemCount: widget.favoriteMeals.length,
        )
      );
    }

  }
}
