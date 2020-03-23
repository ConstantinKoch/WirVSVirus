import 'package:flutter/material.dart';
// import 'Account.dart';
import 'skeleton.dart';
import 'JobOverview.dart';

void main() => runApp(MyApp());

// final user = Account('peter1', 'Peter', 'Schmidt', 'Bin arbeitslos, lol!');

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
