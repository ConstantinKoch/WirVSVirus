import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  final Widget body;
  Skeleton({this.body});

  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DonateYourWork'),
      ),
      body: this.body,
    );
  }
}
