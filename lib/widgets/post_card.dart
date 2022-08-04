import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/constants/colors.dart';
import 'package:cookit/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostCard extends StatelessWidget {
  final int index;
  final Post post;
  final bool fullSize;
  const PostCard({
    Key? key,
    required this.index,
    required this.post,
    this.fullSize = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: fullSize ? 450 : 400,
      width: fullSize ? double.infinity : 300,
      clipBehavior: Clip.hardEdge,
      margin: fullSize
          ? const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            )
          : (index == 0
              ? const EdgeInsets.symmetric(horizontal: kDefaultPadding)
              : const EdgeInsets.only(right: kDefaultPadding)),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Stack(children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            post.photoUrl,
            fit: BoxFit.cover,
          ),
        ),

        // Linear overlay
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 2 / 3],
              ),
            ),
          ),
        ),

        // Post information
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kMediumPadding,
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: kSmallPadding),
                Text(
                  '${post.makingTime} phút - ${post.ingredients} nguyên liệu',
                  style: const TextStyle(color: kGreyColor, fontSize: 16),
                ),
                ListTile(
                  hoverColor: kErrorColor,
                  contentPadding: const EdgeInsets.all(0),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(post.userPhotoUrl),
                    radius: 20,
                    backgroundColor: kGreyColor,
                  ),
                  title: Text(
                    post.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    '${DateTime.now().difference(post.publishDate).inHours.toString()} tiếng trước',
                    style: const TextStyle(
                      color: kGreyColor,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 40,
                    child: Row(children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        width: 16,
                        height: 16,
                      ),
                      Text(
                        ' ${post.rating}',
                        style: const TextStyle(
                          color: kGreyColor,
                        ),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
