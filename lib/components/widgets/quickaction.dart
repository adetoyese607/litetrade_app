import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';


class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
    required this.iconImage,
    required this.text,
    this.backgroundColor,
  });
  final String iconImage;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    // QuickActions(),
    return Column(
      children: [
        CircleAvatar(
          radius: 31,
          backgroundColor: backgroundColor,
          child: Image.asset(iconImage),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColor.colorBlack,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
