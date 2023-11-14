import 'package:flutter/material.dart';
import '../components/components.dart';

import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExploreData>(
      future: mockService.getExploreData(),
      builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if(snapshot.hasData) {
              final todayRecipe = snapshot.data?.todayRecipes ?? [];
              return Center(
                child: TodayRecipeListView(),
              );
            } else {
              return const Center(child: Text('Something went wrong!'),);
            }
      }else{
        return const Center(child: CircularProgressIndicator());
      }
    }
    );
  }
}
