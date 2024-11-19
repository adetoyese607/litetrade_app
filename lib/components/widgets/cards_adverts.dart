import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';

class AdvertCards extends StatefulWidget {
  const AdvertCards({super.key});

  @override
  State<AdvertCards> createState() => _AdvertCardsState();
}

class _AdvertCardsState extends State<AdvertCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 125,
          child: ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                width: 360,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: AppColor.litetradeBlue,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Advertismnet ${index + 1}',
                  style: TextStyle(
                      color: AppColor.litetraeWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 9,
              backgroundColor: AppColor.litetradeBlue,
            ),
            SizedBox(
              width: 9,
            ),
            CircleAvatar(
              radius: 9,
              backgroundColor: AppColor.litetradeDarkGrey,
            ),
            SizedBox(
              width: 9,
            ),
            CircleAvatar(
              radius: 9,
              backgroundColor: AppColor.litetradeDarkGrey,
            )
          ],
        )
      ],
    );
  }
}
