import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350.0, height: 450.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const Icon(Icons.book, color: Colors.white, size: 40.0),
                    const SizedBox(height: 8.0),
                    Text(
                    'Recipe Trend',
                    style: FooderlichTheme.darkTextTheme.headline6,
                  ),
                    const SizedBox(height: 30.0),
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 4.0,
                      children: [
                        Chip(
                          onDeleted: () {
                            print('on chip delete');
                          },
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Healthy',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Vegan',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Carrots',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Greens',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Wheat',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Pedestrian',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Mint',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Lemongrass',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Salad',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                        Chip(
                            //어떤 색이든 [ ]안에 색을 넣으면 색의 농도를 조정할 수 있다
                            label: Text('Water',
                              style: FooderlichTheme.darkTextTheme.bodyText1,
                            )),
                      ],
                    ),
                  ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
