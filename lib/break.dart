import 'dart:async';

import 'package:fitnessapp/home_scre.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Break extends StatelessWidget {
  const Break({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(context),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80"))),
            ),
            Spacer(),
            const Text(
              "Break",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "00",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  const Text(
                    " : ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Consumer<TimerModelSec>(
                    builder: (context, myModel, child) {
                      return Text(
                        myModel.countdown.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      );
                    },
                  )
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      "PAUSE",
                      style: TextStyle(fontSize: 20),
                    ))),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Previous",
                        style: TextStyle(fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 16),
                      ))
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    MyTimerSec(context);
  }
  int countdown = 30;

  MyTimerSec(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      }
    });
  }
}
