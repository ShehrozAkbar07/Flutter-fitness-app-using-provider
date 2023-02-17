import 'package:fitnessapp/diff_project_code/quick_search.dart';
import 'package:fitnessapp/finish.dart';
import 'package:fitnessapp/rUready.dart';
import 'package:fitnessapp/start_up.dart';
import 'package:fitnessapp/stream_provider.dart';
import 'package:fitnessapp/work_out_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'futureprovider.dart';
import 'home.dart';
import 'home_scre.dart';
import 'diff_project_code/hotel_search_screen.dart';
import 'diff_project_code/multiple_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
