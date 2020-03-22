import 'package:flutter/material.dart';
import 'skeleton.dart';
import 'JobOverview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DonateYourWork',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: Skeleton(body:JobOverview()),
    );
  }
}
