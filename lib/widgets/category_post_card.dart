import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/models/category_post.dart';
import 'package:flutter/material.dart';

class CategoryPostCard extends StatelessWidget {
  final int index;
  final CategoryPost post;
  const CategoryPostCard({Key? key, required this.index, required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      clipBehavior: Clip.hardEdge,
      margin: index == 0
          ? const EdgeInsets.symmetric(horizontal: kDefaultPadding)
          : const EdgeInsets.only(right: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Stack(
        children: [
          Image.network(
            post.photoUrl,
            fit: BoxFit.cover,
            width: 180,
            height: 180,
          ),
          SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Text(
                post.title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
