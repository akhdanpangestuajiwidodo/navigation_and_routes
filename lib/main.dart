import 'package:flutter/material.dart';
import 'package:navigation_and_route/first_screen.dart';
import 'package:navigation_and_route/replacement_screen.dart';
import 'package:navigation_and_route/return_data_screen.dart';
import 'package:navigation_and_route/second_screen.dart';
import 'package:navigation_and_route/second_screen_with_data.dart';

import 'another_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstSceen(),
        '/secondScreen': (context) => SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/returnData': (context) => ReturnDataScreen(),
        '/replacementScreen': (context) => ReplacementScreen(),
        '/anotherScreen': (context) => AnotherScreen(),
      },
    );
  }
}