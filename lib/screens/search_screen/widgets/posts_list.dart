import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  const PostsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
      ),
      itemCount: 1000,
      itemBuilder: (context, index) {
        return Image.network(
          'https://images.unsplash.com/photo-1621961048737-a9993789e1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
