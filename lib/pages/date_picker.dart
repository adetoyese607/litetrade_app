// import 'package:flutter/material.dart';
// import 'package:litetrade_app/components/colors/app_colors.dart';

// class DatePicker extends StatefulWidget {
//   const DatePicker({super.key});

//   @override
//   State<DatePicker> createState() => _DatePickerState();
// }

// class _DatePickerState extends State<DatePicker> {

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Date of birth',
//           style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.w500,
//               color: Color.fromRGBO(147, 147, 147, 1)),
//         ),
//         const SizedBox(
//           height: 7,
//         ),
//         TextFormField(
//           onTap: () {
//             _selectDate();
//           },
//           controller: _date,
//           style: TextStyle(
//             color: AppColor.litetradeDarkGrey,
//             fontSize: 15,
//           ),
//           textAlign: TextAlign.start,
//           keyboardType: TextInputType.datetime,
//           decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(26, 30, 0, 16),
//             labelText: '05-02-1995',
//             labelStyle: TextStyle(
//                 color: AppColor.litetradeDarkGrey, fontSize: 13, height: 19),
//             floatingLabelBehavior: FloatingLabelBehavior.never,
//             filled: true,
//             fillColor: AppColor.litetradeLightGrey,
//             border: const OutlineInputBorder(
//                 borderSide: BorderSide.none,
//                 borderRadius: BorderRadius.all(Radius.circular(10))),
//             suffixIcon: InkWell(
//               onTap: () {
//                 setState(() {
//                   _selectDate();
//                 });
//               },
//               child: Padding(
//                   padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
//                   child: Icon(
//                     Icons.date_range_sharp,
//                     color: AppColor.litetradeBlue,
//                   )),
//             ),
//           ),
//           validator: (value) {
//             if (value!.isEmpty) {
//               return 'Enter your date of birth';
//             }
//             return null;
//           },
//         )
//       ],
//     );
//   }

//   // DATE PICKER

// }
