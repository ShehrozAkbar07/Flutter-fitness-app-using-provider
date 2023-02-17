import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuickSearch extends StatefulWidget {
  const QuickSearch({super.key});

  @override
  State<QuickSearch> createState() => _QuickSearchState();
}

class _QuickSearchState extends State<QuickSearch> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Color(0xfffafafa),
          height: size.height * 0.09,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text(
              "Quick Search",
              style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          // color: Colors.yellow,
          height: size.height * 0.14,
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        // backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Near By')
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://imageio.forbes.com/specials-images/imageserve/5fa6935ad2f4f51580bffded/A-hot-tub-at-La-Quinta-Resort---Club-/960x0.jpg?format=jpg&width=960",),
                        // backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Agra')
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        // backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Switserland')
                    ],
                  ),
                  Column(
                    children: const [
                         CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://imageio.forbes.com/specials-images/imageserve/5fa6935ad2f4f51580bffded/A-hot-tub-at-La-Quinta-Resort---Club-/960x0.jpg?format=jpg&width=960",),
                        // backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Dubai')
                    ],
                  ),
                ],
              )),
        ),
        Container(
          color: Color(0xfffafafa),
          height: size.height * 0.09,
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "recommended for you",
                    style: TextStyle(
                        color: Color.fromARGB(255, 40, 38, 38),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xff808080),
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
