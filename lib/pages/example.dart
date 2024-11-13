  // validator: (email) {
               
                //   if (email!.isEmpty) {
                //     return 'Enter Email';
                //   }
                //   bool emailValid = RegExp(
                //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                //       .hasMatch(email);
                //   if (!emailValid) {
                //     return 'Email seems wrong, please try again';
                //   }
                // },
                import 'package:flutter/material.dart';

// final _formkey = GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passToggle = true;
  // bool password = true;
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
        children: <Widget>[
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
              child: Column(
            children: [
              TextFormField(
                obscureText: _passToggle,
                style: const TextStyle(
                    color: Color.fromRGBO(147, 147, 147, 1), fontSize: 12),
                // obscureText: true,
                textAlign: TextAlign.left,

                // style: TextStyle(backgroundColor: Colors.red),

                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(26, 30, 20, 30),
                    fillColor: const Color.fromRGBO(247, 247, 249, 1),
                    filled: true,
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _passToggle = !_passToggle;
                          });
                        },
                        child: Icon(_passToggle
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    // suffixStyle: TextStyle(height: 30),

                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Enter first Name',
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(147, 147, 147, 1),
                      fontSize: 12,
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              )
            ],
          ))
        ],
      ),
    );
  }
}
