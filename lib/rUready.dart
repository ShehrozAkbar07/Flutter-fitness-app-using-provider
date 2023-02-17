import 'dart:async';

import 'package:fitnessapp/work_out_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RuReady extends StatefulWidget {
  const RuReady({super.key});

  @override
  State<RuReady> createState() => _RuReadyState();
}

class _RuReadyState extends State<RuReady> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const   Center(
                  child:  Text(
                    'Are You Ready?',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              const   SizedBox(height: 30,),
                Consumer<TimerModel>(
                  builder: ((context, mymodel, child) {
                    return Text(
                      (mymodel.counter.toString()),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    );
                  }),
                ),
              ]),
        ),
      ),
    );
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context){
    MyTimer(context);
  }
  int counter = 5;

   MyTimer(context) async{
    Timer.periodic(const Duration(seconds: 1), (timer) {
      counter--;
      notifyListeners();
      if (counter == 0){
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDetail()));
        
      }
    });
  }
}
