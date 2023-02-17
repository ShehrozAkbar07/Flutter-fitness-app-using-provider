import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_app_bar.dart';

class Multipleproduct extends StatefulWidget {
  const Multipleproduct({super.key});

  @override
  State<Multipleproduct> createState() => _MultipleproductState();
}

class _MultipleproductState extends State<Multipleproduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Expanded(
              flex: 1,
            child: CustomAppbarr()),
            
            Flexible(
              flex: 3,
                child: Column(
              children: [
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height * 0.3,
                  width: double.infinity,
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
