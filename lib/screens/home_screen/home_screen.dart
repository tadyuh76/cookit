import 'package:cookit/constants/colors.dart';
import 'package:cookit/screens/home_screen/widgets/search_bar.dart';
import 'package:cookit/screens/home_screen/widgets/sections/other_section.dart';
import 'package:cookit/screens/home_screen/widgets/sections/recommend_section.dart';
import 'package:cookit/screens/home_screen/widgets/sections/season_section.dart';
import 'package:cookit/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: CustomAppBar(title: 'Hôm nay ăn gì?', isHome: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchBar(),
            SeasonSection(),
            RecommendSection(),
            OtherSection(),
          ],
        ),
      ),
    );
  }
}
