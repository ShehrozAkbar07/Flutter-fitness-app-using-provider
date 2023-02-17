import 'package:flutter/material.dart';


class CustomAppbarr extends StatefulWidget {
  const CustomAppbarr({super.key});

  @override
  State<CustomAppbarr> createState() => _CustomAppbarrState();
}

class _CustomAppbarrState extends State<CustomAppbarr> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:const  BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff7a71ad), Color(0xffaea8dd)])),
      height: size.height * 0.08,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
         const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 28,
          ),
          Column(
            children: const[
               Text(
                'Hong Kong',
                style:
                    TextStyle(color: Colors.white, fontSize: 18, height: 1.7,fontWeight: FontWeight.bold),
              ),
              Text(
                '28-30, 1  Room 2 Adult',style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child:
                Row(children: [Icon(Icons.file_copy), Icon(Icons.file_copy)]),
          )
        ]),
      ),
    );
  }
}
