import 'package:cookit/models/post.dart';
import 'package:cookit/screens/home_screen/widgets/section.dart';
import 'package:cookit/widgets/post_card.dart';
import 'package:flutter/material.dart';

// TODO: delete after migrate to firebase
Future<List<Post>> getPost() async {
  late List<Post> data;
  await Future.delayed(const Duration(seconds: 1), () {
    data = [
      Post(
        title: 'Pizza nhà làm cực ngon',
        rating: 5.0,
        description: 'description',
        publishDate: DateTime.now().subtract(const Duration(hours: 1)),
        makingTime: 67,
        ingredients: 7,
        userId: 'userId',
        username: 'Tad Yuh',
        userPhotoUrl:
            'https://scontent-hkt1-1.xx.fbcdn.net/v/t39.30808-6/285538499_1066098214335105_4283832089351319427_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=RahRUjxHGGgAX8JI5Pa&_nc_ht=scontent-hkt1-1.xx&oh=00_AT-sqIkhIRHUPwSi2o9tFCyZZq5gh9P3rQH15tRwBtUo8g&oe=62F01CB7',
        photoUrl:
            'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      ),
      Post(
        title: 'Pizza nhà làm cực ngon',
        rating: 5.0,
        description: 'description',
        publishDate: DateTime.now().subtract(const Duration(hours: 2)),
        makingTime: 67,
        ingredients: 7,
        userId: 'userId',
        username: 'Tad Yuh',
        userPhotoUrl:
            'https://scontent-hkt1-1.xx.fbcdn.net/v/t39.30808-6/285538499_1066098214335105_4283832089351319427_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=RahRUjxHGGgAX8JI5Pa&_nc_ht=scontent-hkt1-1.xx&oh=00_AT-sqIkhIRHUPwSi2o9tFCyZZq5gh9P3rQH15tRwBtUo8g&oe=62F01CB7',
        photoUrl:
            'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      ),
      Post(
        title: 'Pizza nhà làm cực ngon',
        rating: 5.0,
        description: 'description',
        publishDate: DateTime.now().subtract(const Duration(hours: 3)),
        makingTime: 67,
        ingredients: 7,
        userId: 'userId',
        username: 'Tad Yuh',
        userPhotoUrl:
            'https://scontent-hkt1-1.xx.fbcdn.net/v/t39.30808-6/285538499_1066098214335105_4283832089351319427_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=RahRUjxHGGgAX8JI5Pa&_nc_ht=scontent-hkt1-1.xx&oh=00_AT-sqIkhIRHUPwSi2o9tFCyZZq5gh9P3rQH15tRwBtUo8g&oe=62F01CB7',
        photoUrl:
            'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
      ),
    ];
  });

  return data;
}

class RecommendSection extends StatelessWidget {
  const RecommendSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Gợi ý cho bạn',
      onArrowTap: () {},
      content: SizedBox(
        height: 400,
        width: double.infinity,
        child: FutureBuilder(
          future: getPost(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                itemBuilder: (context, index) => PostCard(
                  index: index,
                  post: (snapshot.data as dynamic)[index],
                ),
                scrollDirection: Axis.horizontal,
                itemCount: (snapshot.data as dynamic).length,
              );
            }
          },
        ),
      ),
    );
  }
}
