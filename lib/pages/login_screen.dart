import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
import 'package:litetrade_app/components/widgets/button.dart';
import 'package:litetrade_app/components/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 50),
            // color: Colors.red,
            // height: 100,
            child: SizedBox(child: Image.asset('assets/bluelogo.png')),
          ),

          Form(
              key: _formfield,
              child: Column(
                children: [
                  FormWidget(
                    controller: emailController,
                    hinttext: 'Email Address',
                    labeltext: 'Enter email address',
                    keyboard: TextInputType.emailAddress,
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);

                      if (value.isEmpty) {
                        return 'Email not set';
                      } else if (!emailValid) {
                        return 'Email seems wrong, please try again';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  FormWidget(
                      validator: (password) {
                        bool passValid = RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(password!);
                        if (password.isEmpty) {
                          return 'Enter password';
                        }

                        if (!passValid) {
                          return 'Enter valid password';
                        }
                        return null;
                      },
                      hinttext: 'Password',
                      labeltext: 'Enter password',
                      controller: passwordController,
                      offsuffixicon: Icon(
                        Icons.visibility_off_rounded,
                        color: AppColor.litetradeBlue,
                      ),
                      suffixicon: Icon(
                        Icons.visibility,
                        color: AppColor.litetradeBlue,
                      ),
                      keyboard: TextInputType.visiblePassword),
                ],
              )),
          SizedBox(
            height: 12,
          ),

          Text(
            'Forget Password?',
            textAlign: TextAlign.right,
            style: TextStyle(
                color: AppColor.litetradeBlue,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),

          const SizedBox(
            height: 14,
          ),

          // LOGIN BUTTON
          Button(
              onPressed: () {
                if (_formfield.currentState!.validate()) {
                  Navigator.pushNamed(context, '/HomepageScreen');

                  print('Login Successful');
                }
              },
              // route: ,
              width: double.infinity,
              height: 63,
              backgroundcolor: AppColor.litetradeBlue,
              text: 'Sign up',
              fontsize: 16,
              textcolor: Colors.white),

          const SizedBox(height: 27),

          // ALREADY HAVE AN ACCOUNT??

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an acount?",
                style: TextStyle(
                    color: AppColor.litetradeDarkGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 2,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColor.litetradeBlue,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: Image.asset('assets/FingerPrint.png'),
                ),
              ),
            ],
          )
          // SizedBox(child: Image.asset('assets/FingerPrint.png'),),
        ],
      ),
    );
  }
}
