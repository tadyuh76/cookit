import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kAppBarHeight,
      backgroundColor: Colors.white,
      titleSpacing: kMediumPadding,
      elevation: 2,
      title: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: kBackgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tìm món ăn, nguyên liệu...',
                    style: TextStyle(
                      color: kGreyColor,
                      fontSize: 16,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 24,
                    height: 24,
                    color: kGreyColor,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: kMediumPadding),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kBackgroundColor,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/filter.svg',
              width: 24,
              height: 24,
              color: kGreyColor,
            ),
          )
        ],
      ),
    );
  }
}
