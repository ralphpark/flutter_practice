
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemClick(int index) {
    _selectedIndex = index;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Fooderlich',
        style: Theme.of(context).textTheme.headline6,
      )),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          _onItemClick(index);
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card'),
          ],
        )
    );
  }
}