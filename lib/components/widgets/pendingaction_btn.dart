import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';

class HomePagePendingActions extends StatelessWidget {
  const HomePagePendingActions({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColor.litetradeDarkGrey,
              radius: 9,
              child: CircleAvatar(
                backgroundColor: AppColor.litetraeWhite,
                radius: 8.5,
              ),
            ),
            SizedBox(width: 33),
            Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColor.litetradeblack,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        //
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: AppColor.litetradeBlue,
          size: 15,
        )
      ],
    );
  }
}
