import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageContainer extends StatelessWidget {
  String? imagee;
  String? title_text;
  String? time;
  ImageContainer(
      {required this.imagee, required this.title_text, required this.time});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.22,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.22,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imagee!,
                    ))),
          ),
          // Container(
          //   height: 150,
          //   color: Colors.black26,
          // ),
          Positioned(
            right: 20,
            left: 10,
            top: 10,
            child: Text(
              title_text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Positioned(
            right: 30,
            left: 12,
            top: 38,
            child: Text(
              time!,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
