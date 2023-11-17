import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({super.key, required this.recipes});
  static const _gridPadding = 24.0;
  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(_gridPadding),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing:_gridPadding,
          crossAxisSpacing: _gridPadding,
        ),
        itemBuilder: (context, index) {
          return  RecipeThumbnail(recipe: recipes[index],);
    },
        itemCount: recipes.length,
    );
  }
}
