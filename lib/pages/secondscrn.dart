import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
import 'package:litetrade_app/pages/button.dart';

class Secondscrn extends StatelessWidget {
  const Secondscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // backgroundColor: Colors.amber,
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 28),
          child: Column(
            children: [
              // Clickable Text (SKIP)
              GestureDetector(
                onTap: () {},
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color.fromRGBO(
                        26,
                        39,
                        121,
                        1,
                      ),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // Transaction Image
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 60),
                  child: Image.asset('assets/phone.png')),

              // Screen Text Caption

              const Text(
                'Fast & Easy Bills Payment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(105, 11, 80, 40),
                child: Text(
                  'Litetrade has been meticulously designed to ensure that bills payment is not only effortless but also seamlessly integrated. ',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),

              Button(
                  width: 240,
                  height: 50,
                  backgroundcolor: AppColor.litetradeBlue,
                  text: 'Create Account',
                 
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignUp');
                  },
                  fontsize: 14,
                  textcolor:  Colors.white
                  ),

              const SizedBox(height: 11),
              Button(
                onPressed: (){
                   Navigator.pushNamed(context, '/LoginScreen');
                },
                width: 240,
                height: 50,
                backgroundcolor: const Color.fromRGBO(255, 255, 255, 1),
                text: 'Login',
                fontsize: 14,
                textcolor: AppColor.litetradeBlue,
              )
            ],
          ),
        ));
  }
}
