// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DropDown extends StatefulWidget {
//   const DropDown({super.key});

//   @override
//   State<DropDown> createState() => _DropDownState();
// }

// class _DropDownState extends State<DropDown> {
//   String dropdownvalue = 'Item 1';
//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 4, right: 4),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.grey, width: 0.5)),
//               child: DropdownButton(
//                   underline: SizedBox(),

//                   // focusColor: const Color(AppColors.primary),
//                   elevation: 4,
//                   isExpanded: true,
//                   hint: const Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Text(
//                       'Select reason',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   items: items.map((String items) {
//                     return DropdownMenuItem(
//                       value: items,
//                       child: Text(items),
//                     );
//                   }).toList(),
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       dropdownvalue = newValue!;
//                     });
//                   }),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
