import 'package:fitnessapp/customanimationappbar.dart';
import 'package:fitnessapp/image_container.dart';
import 'package:fitnessapp/start_up.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 150, 50, 40),
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(13),
                                      bottomLeft: Radius.circular(13))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Streak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "120",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("kCal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "26",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Yoga For All",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),

                                  InkWell(
                                    onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Startup())),
                                    child: ImageContainer(
                                        imagee:
                                            "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80",
                                        title_text: "Yoga For Begineers",
                                        time: 'Last Time: 2 Feb'),
                                  ),
                                  ImageContainer(
                                      imagee:
                                          "https://images.unsplash.com/photo-1510894347713-fc3ed6fdf539?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                      title_text: "Weight Loss Yoga",
                                      time: 'Last Time: 2 Jan'),

                                  ImageContainer(
                                      imagee:
                                          "https://images.unsplash.com/photo-1573590330099-d6c7355ec595?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                      title_text: "Suryanamaskar",
                                      time: 'Last Time: Yesterday'),

                                  // ImageContainer(
                                  //     imagee:
                                  //         "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80",
                                  //     title_text: "Yoga For Begineers",
                                  //     time: 'Last Time: 2 Feb'),
                                  // ImageContainer(
                                  //     imagee:
                                  //         "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80",
                                  //     title_text: "Yoga For Begineers",
                                  //     time: 'Last Time: 2 Feb'),

                                  //

                                  Container(
                                      padding: EdgeInsets.only(bottom: 15),
                                      width: MediaQuery.of(context).size.width,
                                      child: const Text(
                                        "Choose Your Type",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(height: size.height * 0.03),
                                  ImageContainer(
                                      imagee:
                                          "https://images.unsplash.com/photo-1599901860904-17e6ed7083a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                      title_text: "Power Yoga",
                                      time: 'Last Time: 29 Jan'),
                                  ImageContainer(
                                      imagee:
                                          "https://media.istockphoto.com/photos/young-woman-in-yoga-pose-using-laptop-at-home-picture-id1334071264?b=1&k=20&m=1334071264&s=170667a&w=0&h=0wnQzJJJIA5NMo6dOmVepS6mXC0eqLjI26ADDlIK4Lg=",
                                      title_text: "Breathing Yoga",
                                      time: 'Last Time: 2 Jan'),

                                  ImageContainer(
                                      imagee:
                                          "https://images.unsplash.com/photo-1556816723-1ce827b9cfbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=792&q=80",
                                      title_text: "Increaseing Flexibility",
                                      time: 'Last Time: 29 Jan'),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomAppBar(
                      animationController: _animationController,
                      colorsTween: _colorTween,
                      drawerTween: _drawerTween,
                      homeTween: _homeTween,
                      iconTween: _iconTween,
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      yogaTween: _yogaTween)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
