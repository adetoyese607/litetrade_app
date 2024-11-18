import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.width,
    required this.height,
    this.route,
    required this.backgroundcolor,
    required this.text,
    required this.fontsize,
    required this.textcolor,
    this.onPressed,
  });

  final double width;
  final double height;
  final String? route;
  final Color backgroundcolor;
  final String text;
  final Color textcolor;
  final double fontsize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: (route == null || route!.isEmpty) ? onPressed : () {
            Navigator.of(context).pushNamed('$route');
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundcolor,
              elevation: 0,
              side: const BorderSide(
                  width: 0, color: Color.fromRGBO(26, 39, 121, 0.24))),
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight.w500,
              fontSize: fontsize,
            ),
          )),
    );
  }
}
