import 'package:flutter/material.dart';
import 'components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({super.key, required this.posts});
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chef 👩‍🍳',
            style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 16,),
          ListView.separated(
              primary: false, // 프라이머리가 트루이면 스크롤이 가능 폴스면 스크롤 관여 안함
              physics: NeverScrollableScrollPhysics(), // 스크롤 기능을 아예 꺼버리는기능
              shrinkWrap: true, // 이게 있어야 높이가 늘어나지 않는다. 아이템 사이즈만큼 고정
              itemBuilder: (context,index){
                return FriendPostTile(post: posts[index],);
              },
              separatorBuilder: (context,index){
                return const SizedBox(height: 16,);
              },
              itemCount: posts.length)
        ],
      ),
    );
  }
}
