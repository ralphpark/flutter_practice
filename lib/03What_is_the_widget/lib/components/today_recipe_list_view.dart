import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key, required this.recipes});
  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipes of the Day 🍳',
            style: Theme
                .of(context)
                .textTheme
                .headline1,
          ),
          const SizedBox(height: 16,),
          Container(
            height: 400,
            child: ListView.separated(// 각각 사이사이 공간을 줄 수 있는 빌더가 있다.
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return _buildCard(recipes[index]);
              },
              separatorBuilder: (context, index) { // 사이 공간
                return const SizedBox(width: 16,);
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildCard(ExploreRecipe exploreRecipe) {
    if(exploreRecipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: exploreRecipe,);
    } else if(exploreRecipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: exploreRecipe,);
    } else if(exploreRecipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: exploreRecipe,);
    } else{
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
