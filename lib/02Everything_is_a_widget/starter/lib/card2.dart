import 'package:flutter/material.dart';
import 'author_card.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';


class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = 'Mike Katz';
  final String title = 'Smoothie Connoisseur';
  final String description = 'Smoothies';
  final String chef = 'Recipe';

  //하트 아이콘 유니코드
final String heart = '\u2665';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(width: 350.0, height: 450.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child:  Column(
          children: [
              AuthorCard(
                authorName: 'Mike Katz',
                title: 'Smoothie Connoisseur',
                imageProvider: AssetImage('assets/author_katz.jpeg'),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: RotatedBox(
                          quarterTurns: 3,
                          child: Text('Smoothie',
                              style: Theme.of(context).textTheme.headline1)),
                    ),
                    Text('Recipe', style:Theme.of(context).textTheme.headline1)
                  ],
                ),
              )
          ],
        )
      ),
    );
  }
}