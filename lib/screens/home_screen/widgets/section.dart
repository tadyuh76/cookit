import 'package:cookit/constants/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Section extends StatelessWidget {
  final Widget content;
  final String title;
  final VoidCallback onArrowTap;
  const Section({
    Key? key,
    required this.content,
    required this.title,
    required this.onArrowTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 24),
              ),
              IconButton(
                splashRadius: kSmallIconSize,
                onPressed: onArrowTap,
                icon: SvgPicture.asset('assets/icons/right_arrow.svg'),
              )
            ],
          ),
        ),
        const SizedBox(height: kMediumPadding),
        content,
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
