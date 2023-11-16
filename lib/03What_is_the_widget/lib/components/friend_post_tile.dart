import 'package:flutter/material.dart';

import 'circle_image.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircleImage(
            imageRadius: 24,
            imageProvider: AssetImage('assets/profile_pics/person_joe.jpeg'),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('username',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2,
                ),
                Text(
                  'post time',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],),
          ),
          ],
      ),
    );
  }
}
