import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';
import 'package:litetrade_app/components/widgets/button.dart';
import 'package:litetrade_app/components/widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formfield = GlobalKey<FormState>();
  // bool _passToggle = true;
  // bool password = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Create Account',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
        children: [
          const Text(
            'Sign Up to get stated',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          const Text(
            'Fill the form below',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 43),
          Form(
              key: _formfield,
              child: Column(
                children: [
                  FormWidget(
                    hinttext: 'First Name',
                    labeltext: 'Enter first name',
                    keyboard: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your first name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FormWidget(
                    hinttext: 'Last Name',
                    labeltext: 'Enter last name',
                    keyboard: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your last name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  FormWidget(
                    hinttext: 'Phone Number',
                    labeltext: 'Enter phone number',
                    keyboard: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your phone number';
                      } else if (!RegExp(
                              r"^(\+\d{1,3}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")
                          .hasMatch(value)) {
                        return 'Phone number seems wrong, please try again';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
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
                  const SizedBox(
                    height: 16,
                  ),
                  //  FormWidget(
                  //     hinttext: 'Date of birth',
                  //     labeltext: '05-02-1995',
                  //     offsuffixicon:
                  //    
                  //     suffixicon: Icon(
                  //       Icons.date_range_rounded,
                  //       color: AppColor.litetradeBlue,
                  //     ),
                  //     keyboard: TextInputType.datetime),

// Date Of Birth
 FormWidget(
  suffixicon: Icon(
                        Icons.date_range_rounded,
                        color: AppColor.litetradeBlue,
                     ), 
                    hinttext: 'Date of Birth',
                    isDate: true,
                    labeltext: 'Date of Birth',
                    controller: dateController,
                    keyboard: TextInputType.number,
                
              
                  ),
                  // const DatePicker(),
                  //  DATE OF BIRTH
                  const SizedBox(
                    height: 16,
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
                  const SizedBox(
                    height: 16,
                  ),
                  FormWidget(
                    controller: confirmPasswordController,
                    hinttext: 'Confirm Password',
                    labeltext: 'Enter password',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (p0 != passwordController.text) {
                        return "Password must match";
                      }
                      return null;
                    },
                    suffixicon: Icon(
                      Icons.visibility,
                      color: AppColor.litetradeBlue,
                    ),
                    keyboard: TextInputType.number,
                    offsuffixicon: Icon(
                      Icons.visibility_off_rounded,
                      color: AppColor.litetradeBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                ],
              )),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.info_outlined,
                  size: 13,
                  color: AppColor.litetradeBlue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'Your password must be 8 characters long, contain atleast one uppercase letter and a number',
                      style: TextStyle(
                          color: AppColor.litetradeBlue,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Button(
              onPressed: () {
                if (_formfield.currentState!.validate()) {
                  Navigator.pushNamed(context, '/LoginScreen');
                  print('Sign Up Successful');
                }
              },
              // route: ,
              width: double.infinity,
              height: 63,
              backgroundcolor: AppColor.litetradeBlue,
              text: 'Sign up',
              fontsize: 16,
              textcolor: Colors.white),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: AppColor.litetradeDarkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.litetradeBlue,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
