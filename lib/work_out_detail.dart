import 'dart:async';
import 'package:fitnessapp/break.dart';
import 'package:fitnessapp/futureprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkOutDetail extends StatelessWidget {
  const WorkOutDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
        create: (context) => TimerModelSec(context),
        child: Scaffold(
          body: Stack(children: [
            Column(
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
                  "Anulom Vilom",
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
                const Spacer(),
                const SizedBox(
                  height: 30,
                ),
                Consumer<TimerModelSec>(
                  builder: (context, MyModel, child) {
                    return ElevatedButton(
                        onPressed: () {
                          MyModel.show();
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: const Text(
                              "PAUSE",
                              style: TextStyle(fontSize: 20),
                            )));
                  },
                ),
                const Spacer(),
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
                Divider(
                  thickness: 2,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        "Next: Anulom Vilom",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            Consumer<TimerModelSec>(
              builder: (context, MyModel, child) {
                return Visibility(
                  visible: MyModel.visible,
                  child: Center(
                      child: Container(
                    color: Colors.blue.withOpacity(0.7),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Pause",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Yoga feels better",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            child: Container(
                              width: 180,
                              child: const Text(
                                "Restart",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                        OutlinedButton(
                            onPressed: () {
                              MyModel.hide();
                            },
                            child: Container(
                              width: 180,
                              child: const Text(
                                "Quit",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                        OutlinedButton(
                          onPressed: () {
                            // myModel.show();
                          },
                          child: Container(
                            width: 180,
                            child: Text(
                              "RESUME",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        )
                      ],
                    ),
                  )),
                );
              },
            )
          ]),
        ));
  }
}

class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    MyTimerSec(context);
  }
  int countdown = 30;
  bool visible = false;

  MyTimerSec(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Break()));
      }
    });
  }

  void show() {
    visible = true;
    notifyListeners();
  }

  void hide() {
    visible = false;
    notifyListeners();
  }
}
