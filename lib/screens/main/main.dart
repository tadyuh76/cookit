import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/constants/colors.dart';
import 'package:cookit/screens/explore_screen/explore_screen.dart';
import 'package:cookit/screens/home_screen/home_screen.dart';
import 'package:cookit/screens/menu_screen/menu_screen.dart';
import 'package:cookit/screens/search_screen/search_screen.dart';
import 'package:cookit/screens/user_screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _screenIndex = 0;

  final _screens = const [
    HomeScreen(),
    SearchScreen(),
    ExploreScreen(),
    MenuScreen(),
    UserScreen(),
  ];

  void onTabSelected(index) => setState((() => _screenIndex = index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: kBottomTabHeight,
        child: BottomNavigationBar(
          currentIndex: _screenIndex,
          onTap: onTabSelected,
          selectedFontSize: 12,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kGreyColor,
          showUnselectedLabels: true,
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/icons/home_active.svg',
                  color: kPrimaryColor,
                ),
                icon: SvgPicture.asset('assets/icons/home.svg'),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: kPrimaryColor,
                ),
                icon: SvgPicture.asset('assets/icons/search.svg'),
                label: 'Tìm kiếm'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/icons/explore.svg',
                  color: kPrimaryColor,
                ),
                icon: SvgPicture.asset('assets/icons/explore.svg'),
                label: 'Khám phá'),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  color: kPrimaryColor,
                ),
                icon: SvgPicture.asset('assets/icons/menu.svg'),
                label: 'Thực đơn'),
            BottomNavigationBarItem(
                activeIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/temp/avatar.jpg'),
                    backgroundColor: kGreyColor,
                    radius: 12,
                  ),
                ),
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('assets/temp/avatar.jpg'),
                  backgroundColor: kGreyColor,
                  radius: 12,
                ),
                label: 'Cá nhân'),
          ],
        ),
      ),
      body: _screens[_screenIndex],
    );
  }
}
