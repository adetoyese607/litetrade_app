import 'package:flutter/material.dart';
import 'package:litetrade_app/components/colors/app_colors.dart';

final _formkey = GlobalKey<FormState>();

class FormWidget extends StatefulWidget {
  const FormWidget(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      this.suffixicon,
      required this.keyboard,
      this.offsuffixicon,
      this.validator,
      this.controller,
      this.isDate = false});
  final String hinttext;
  final String labeltext;
  final Widget? suffixicon;
  final TextEditingController? controller;
  final Widget? offsuffixicon;
  final TextInputType keyboard;
  final String? Function(String?)? validator;
  final bool isDate;
  

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool _passToggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hinttext,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(147, 147, 147, 1)),
        ),
        const SizedBox(
          height: 7,
        ),
        TextFormField(
          readOnly: widget.isDate,
          onTap: widget.isDate == true
              ? () {
                  _selectDate();
                }
              : () {},
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: _passToggle,
          style: TextStyle(
            color: AppColor.litetradeDarkGrey,
            fontSize: 15,
          ),
          textAlign: TextAlign.start,
          keyboardType: widget.keyboard,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(26, 30, 0, 16),
            labelText: widget.labeltext,
            labelStyle: TextStyle(
                color: AppColor.litetradeDarkGrey, fontSize: 13, height: 19),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: AppColor.litetradeLightGrey,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.litetradeLightGrey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.litetradeLightGrey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.litetradeLightGrey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _passToggle = !_passToggle;
                });
              },
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
                  child:
                      _passToggle ? widget.suffixicon : widget.offsuffixicon),
            ),
          ),
          validator: widget.validator,
          // validator: (value) {
          //   if (value!.isEmpty) {
          //     return 'Enter Email';
          //   }
          //   bool emailValid = RegExp(
          //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          //       .hasMatch(value);
          //   if (!emailValid) {
          //     return 'Email seems wrong, please try again';
          //   } else {}
          // },
        )
      ],
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

// TO SHOW THE DATE CHOSEN

    setState(() {
      widget.controller?.text = picked.toString().split(" ")[0];
    });
  }
}
