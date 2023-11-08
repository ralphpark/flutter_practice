import 'package:flutter/material.dart';
import 'package:flutter_project/01first_flutter_app/recipe_model.dart';
class RecipeDetail extends StatefulWidget { // slider를 추가하기 위해 stateful widget을 사용
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  double multiplier = 1; // slider의 기본값
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
            const SizedBox(height: 16.0),
            Expanded( // 컬럼의 남은 공간을 다 차지해 주는 역할
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text('${(ingredient.quantity * multiplier)} ${ingredient.measure} ${ingredient.name}'); // listView는 리스트의 값을 하나씩 불러 온다.
              },),
            ),
            Slider(value: multiplier, onChanged: (value) {
              print(value);
              setState(() { // setState를 통해 변경된 값을 적용
                multiplier = value; // 변화되는 값을 setState 안이나 밖에 저장해도 동일하다.
              });
            },
              min: 1,
              max: 10,
              divisions: 9, // slider의 구간을 나누어 준다. 1부터 10까지면 디비전은 9개
              label: '${(widget.recipe.servings*multiplier).toInt()}인분', // slider의 값이 변할 때마다 나타나는 값
            ),
          ],
        )));
  }
}