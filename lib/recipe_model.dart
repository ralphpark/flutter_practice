class Recipe{
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  //TODO : 몇인분, 재료
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spaghetti_meatballs.jpeg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti'),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomato_soup.jpeg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup'),
        Ingredient(1, 'cup', 'Water'),

      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/grilled_cheese.jpeg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese'),
        Ingredient(2, 'slices', 'Bread'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/choco_chip.jpeg',
      24,
      [
        Ingredient(4, 'cups', 'flour'),
        Ingredient(2, 'cups', 'sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/taco.jpeg',
      1,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese'),
        Ingredient(0.25, 'cup', 'chopped tomatoes'),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/hawaiian_pizza.jpeg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
    ),
  ];
}

class Ingredient{
  String name;
  double quantity;
  String measure;

  Ingredient(this.quantity, this.measure, this.name);
}