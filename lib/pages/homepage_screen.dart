import 'package:flutter/material.dart';
import 'package:litetrade_app/components/buttons/homepage_btn.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    Color colorWhite = Colors.white;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // NAME AND NOTIFICATION ICON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hola! Emmanuel (NG)',
                  style: TextStyle(
                      color: AppColor.colorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Icon(
                      Icons.notifications_active_outlined,
                      size: 25,
                      color: AppColor.colorBlack,
                    )),
              ],
            ),
            SizedBox(
              height: 26,
            ),

            Container(
              // height: 83,
              decoration: BoxDecoration(
                color: AppColor.litetradeBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Monnee Wallet Balance',
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        Icon(
                          Icons.visibility_off,
                          color: colorWhite,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        child: Text(
                      style: TextStyle(
                          color: colorWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                      '₦50,000.00',
                      textAlign: TextAlign.left,
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomepageButton(text: 'Top Up', icon: Icons.add_circle,),
                  // SizedBox(width: 90,),
                    HomepageButton(
                    text: 'Withdraw',
                    icon: Icons.send,
                  ),
                
                ],
              
            ),
          ],
        ),
      ),
    );
  }
}

