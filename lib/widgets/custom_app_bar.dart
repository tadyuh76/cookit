import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isHome;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.isHome = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: kAppBarHeight,
        backgroundColor: Colors.white,
        titleSpacing: kDefaultPadding,
        elevation: 2,
        title: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
            ),
            isHome
                ? const SizedBox()
                : (IconButton(
                    splashRadius: kSmallIconSize,
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/add.svg',
                      height: kBigIconSize,
                      width: kBigIconSize,
                    ),
                  )),
            IconButton(
              splashRadius: kSmallIconSize,
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/bell.svg',
                height: kBigIconSize,
                width: kBigIconSize,
              ),
            )
          ],
        ));
  }
}
