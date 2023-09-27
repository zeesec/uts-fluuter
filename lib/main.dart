// ignore_for_file: duplicate_import, unused_import

import 'package:flutter/material.dart';
import 'package:uts_project/detailPage.dart';
import 'package:uts_project/homePage.dart';
import 'homePage.dart';
import 'detailPage.dart';
import 'cartPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
