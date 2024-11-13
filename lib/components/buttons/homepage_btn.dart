import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
class HomepageButton extends StatelessWidget {
  const HomepageButton({
    super.key,
    this.icon,
    required this.text,
  });
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 44,
        // width: ,
        width: 180,
        // color: Colors.red,

        decoration: BoxDecoration(
            color: Color.fromRGBO(236, 239, 255, 1),
            //  color: Colors.red,
            border: Border.all(color: AppColor.litetradeBlue),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColor.litetradeBlue,
            ),
            SizedBox(
              width: 11,
            ),
            Text(
              text,
              style: TextStyle(
                  color: AppColor.litetradeBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
