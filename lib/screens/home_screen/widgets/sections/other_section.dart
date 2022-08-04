import 'package:cookit/models/category_post.dart';
import 'package:cookit/screens/home_screen/widgets/section.dart';
import 'package:cookit/widgets/category_post_card.dart';
import 'package:flutter/material.dart';

final List<CategoryPost> posts = [
  CategoryPost(
    title: 'Dưa hấu',
    photoUrl:
        'https://images.unsplash.com/photo-1621961048737-a9993789e1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    postId: 'postId',
  ),
  CategoryPost(
    title: 'Dưa hấu',
    photoUrl:
        'https://images.unsplash.com/photo-1621961048737-a9993789e1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    postId: 'postId',
  ),
  CategoryPost(
    title: 'Dưa hấu',
    photoUrl:
        'https://images.unsplash.com/photo-1621961048737-a9993789e1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    postId: 'postId',
  ),
];

class OtherSection extends StatelessWidget {
  const OtherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      content: SizedBox(
        height: 180,
        child: ListView.builder(
          itemCount: posts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CategoryPostCard(
            index: index,
            post: posts[index],
          ),
        ),
      ),
      title: 'Ăn vặt ngày mưa',
      onArrowTap: () {},
    );
  }
}
