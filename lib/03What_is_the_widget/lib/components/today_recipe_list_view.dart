import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          'Recipes of the Day 🍳',
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(height: 16,),
        Container(
          height: 400,color: Colors.grey,
      )
      ],),
    );
  }
}
