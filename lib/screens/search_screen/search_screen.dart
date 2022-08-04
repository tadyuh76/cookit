import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/screens/search_screen/widgets/posts_list.dart';
import 'package:cookit/screens/search_screen/widgets/search_header.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          kAppBarHeight,
        ),
        child: SearchHeader(),
      ),
      body: PostsList(),
    );
  }
}
