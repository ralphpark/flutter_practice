import 'package:flutter/material.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Social Chef 👩‍🍳'),
        ListView.separated(
            primary: false, // 프라이머리가 트루이면 스크롤이 가능 폴스면 스크롤 관여 안함
            physics: NeverScrollableScrollPhysics(), // 스크롤 기능을 아예 꺼버리는기능
            shrinkWrap: true, // 이게 있어야 높이가 늘어나지 않는다. 아이템 사이즈만큼 고정
            itemBuilder: (context,index){
              return FriendPostTile();
            },
            separatorBuilder: (context,index){
              return const SizedBox(height: 16,);
            },
            itemCount: 10)
      ],
    );
  }
}
