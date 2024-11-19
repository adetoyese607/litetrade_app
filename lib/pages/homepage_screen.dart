import 'package:flutter/material.dart';
import 'package:litetrade_app/components/widgets/cards_adverts.dart';
import 'package:litetrade_app/components/widgets/homepage_btn.dart';
import 'package:litetrade_app/components/widgets/pendingaction_btn.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
import 'package:litetrade_app/components/widgets/quickaction.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  bool balToggle = true;
  int currentNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
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
              Icon(
                Icons.notifications_active_outlined,
                size: 25,
                color: AppColor.colorBlack,
              ),
            ],
          ),
          const SizedBox(
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
                              color: AppColor.litetraeWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      GestureDetector(
                        onTap: () {
                         setState(() {
                            balToggle = !balToggle;
                         });
                        },
                        child: Icon(balToggle ? Icons.visibility_off: Icons.visibility, color: AppColor.litetraeWhite,)
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      child: Text(
                    style: TextStyle(
                        color: AppColor.litetraeWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                   balToggle? '₦50,000.00' : '*******' ,
                    textAlign: TextAlign.left,
                  ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomepageButton(
                text: 'Top Up',
                icon: Icons.add_circle,
              ),
              // SizedBox(width: 90,),
              HomepageButton(
                text: 'Withdraw',
                icon: Icons.send,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  'Pending Actions',
                  style: TextStyle(
                      color: AppColor.colorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27),
                  child: Column(
                    children: [
                      // THE ACTIONS
                      HomePagePendingActions(
                        text: 'Setup Biometrics',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      HomePagePendingActions(text: 'Add Payment Details'),
                      SizedBox(
                        height: 30,
                      ),
                      HomePagePendingActions(text: 'Create Transaction PIN'),
                      SizedBox(
                        height: 30,
                      ),
                      HomePagePendingActions(text: 'KYC verification'),
                    ],
                  ))
            ],
          ),
      
          const SizedBox(
            height: 53,
          ),
      
          SizedBox(
            child: Text(
              'Quick Actions',
              style: TextStyle(
                  color: AppColor.colorBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
      
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            //  mainAxisSpacing: 2,
            children: const [
              QuickActions(
                  backgroundColor: Color.fromRGBO(196, 61, 203, 0.19),
                  iconImage: 'assets/phoneIcon.png',
                  text: 'Airtime'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(28, 207, 220, 0.13),
                  iconImage: 'assets/airtime.png',
                  text: 'Data'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(221, 152, 53, 0.16),
                  iconImage: 'assets/cashIcon.png',
                  text: 'Airtime to Cash'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(221, 41, 123, 0.15),
                  iconImage: 'assets/electricity.png',
                  text: 'Electricity'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(78, 113, 255, 0.2),
                  iconImage: 'assets/caable.png',
                  text: 'Cable Sub'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(254, 121, 68, 0.2),
                  iconImage: 'assets/bet.png',
                  text: 'Bet Funding'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(6, 126, 225, 0.18),
                  iconImage: 'assets/gift.png',
                  text: 'Gift Card'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(221, 41, 123, 0.15),
                  iconImage: 'assets/payoneer.png',
                  text: 'Payoneer Funds'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(0, 121, 193, 0.17),
                  iconImage: 'assets/paypal.png',
                  text: 'Paypal Funds'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(110, 187, 83, 0.21),
                  iconImage: 'assets/cashApp.png',
                  text: 'Cash App'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(37, 214, 129, 0.16),
                  iconImage: 'assets/electricity.png',
                  text: 'Zelle Funds'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(230, 8, 21, 0.14),
                  iconImage: 'assets/venmo.png',
                  text: 'Venmo Funds'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(221, 152, 59, 0.21),
                  iconImage: 'assets/crtypto.png',
                  text: 'Crypto'),
              QuickActions(
                  backgroundColor: Color.fromRGBO(26, 39, 121, 0.21),
                  iconImage: 'assets/dollar.png',
                  text: 'Dollar Card'),
            ],
          ),
          SizedBox(height: 30,),
        AdvertCards(),
     
        ],
      ),
      bottomNavigationBar: Container(
        height: 68,

        // color: Colors.red,
        child: BottomNavigationBar(
            backgroundColor: AppColor.litetraeWhite,
            // enableFeedback:false ,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.litetradeBlue,
            unselectedItemColor: AppColor.litetradeDarkGrey,
            showUnselectedLabels: true,
            iconSize: 24,
            selectedLabelStyle: TextStyle(
                color: AppColor.litetradeBlue,
                fontSize: 8,
                fontWeight: FontWeight.w400),
            unselectedLabelStyle: TextStyle(
                // color: AppColor.litetradeBlue,
                fontSize: 8,
                fontWeight: FontWeight.w400),
            // int currentIndex = 0;
            // unselectedItemColor: AppColor.colorBlack,
            onTap: (index) {
              setState(() {
                currentNavIndex = index;
              });
            },
            currentIndex: currentNavIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_bitcoin_rounded),
                label: 'Crypto',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Menu',
              ),
            ]),
      ),
    );
  }
}

