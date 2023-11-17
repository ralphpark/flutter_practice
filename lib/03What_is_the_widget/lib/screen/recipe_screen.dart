import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../components/recipe_grid_view.dart';
import '../models/models.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});
  final mockFooderLichService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SimpleRecipe>>(
      future: mockFooderLichService.getRecipes(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data ?? [];
            return RecipeGridView(recipes: recipes,);
          } else {
          return const Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
