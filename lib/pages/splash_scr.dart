import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
class SplashScr extends StatelessWidget {
  const SplashScr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.litetradeBlue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(child: Image.asset('assets/vector.png')),
            const SizedBox(width: 10),
            RichText(text: 
          const  TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 42, fontWeight: FontWeight.w100),
              children: <TextSpan>[
                TextSpan(text: 'lite',
                style: TextStyle(fontWeight: FontWeight.w900)
                ),
                TextSpan(text: 'trade')
               
              ]
            ))
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton(onPressed: (){
           Navigator.pushNamed(context, '/SecondScr');
        }, 
      
        child: const Icon(Icons.navigate_next) ,),
      ),
    );
  }
}
