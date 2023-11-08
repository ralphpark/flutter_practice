import 'package:flutter/material.dart';
import 'package:flutter_project/01first_flutter_app/receip_detail.dart';
import 'recipe_model.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (context, index) {
        return GestureDetector(onTap : (){
          print(Recipe.samples[index].label);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RecipeDetail(recipe : Recipe.samples[index]);
          }));
        }, child: buildRecipeCard(Recipe.samples[index]));
      }
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0, // 그림자
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0), // 24.0만큼의 padding
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            const SizedBox(height:28.0),
            Text(recipe.label),
          ],
        ),
      ),
    );
  }
}
