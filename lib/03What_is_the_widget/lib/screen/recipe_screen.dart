import 'package:flutter/material.dart';

import '../api/mock_fooderlich_service.dart';
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
          return Center(child: Text('Recipe Screen'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}
