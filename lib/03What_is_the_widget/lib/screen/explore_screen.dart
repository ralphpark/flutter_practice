import 'package:flutter/material.dart';
import '../components/components.dart';

import '../components/friend_post_list_view.dart';
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
              final friendPosts = snapshot.data?.friendPosts ?? [];
              // data가 null이면 null을 반환하고 아니면 friendPosts를 통해서 데이터를 가져오는데
              // null이면 빈 리스트를 반환한다.
              return Center(
                child: ListView(
                  children: [
                    TodayRecipeListView(recipes: todayRecipe,),
                    const SizedBox(height: 32,),
                     FriendPostListView(posts: friendPosts,),
                  ],
                ),
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
