import 'package:cookit/constants/breakpoints.dart';
import 'package:cookit/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Bạn đang muốn tìm...?',
            style: TextStyle(
              fontSize: 16,
              color: kGreyColor,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/search.svg',
            width: kSmallIconSize,
            height: kSmallIconSize,
            color: kGreyColor,
          )
        ],
      ),
    );
  }
}
