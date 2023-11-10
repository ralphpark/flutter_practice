import 'package:flutter/material.dart';
import 'home.dart';
import 'fooderlich_theme.dart';


void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: const Home(),
    );
  }
}
