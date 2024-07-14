import 'package:flutter/material.dart';
import 'package:myntra_design/Collection2.dart';
import 'package:myntra_design/Valentine.dart';
import 'package:myntra_design/Valentine_collection.dart';
import 'package:myntra_design/heeramandi.dart';
import 'package:myntra_design/homepage.dart';
import 'package:myntra_design/interest_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
