import 'package:flutter/material.dart';
import 'package:flutter_project/recipe_model.dart';
class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('recipe Detail'),
        ),
        body: SafeArea(
            child: Column(
              children: [
            SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(widget.recipe.imageUrl)),
            const SizedBox(height: 16.0),
            Text(widget.recipe.label),
          ],
        )));
  }
}