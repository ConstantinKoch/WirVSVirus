import 'package:flutter/material.dart';
import 'AccountView.dart';

class Skeleton extends StatefulWidget {
  final Widget body;
  Skeleton({this.body});

  @override
  _SkeletonState createState() => _SkeletonState(this.body);
}

class _SkeletonState extends State<Skeleton> {
  final Widget body;
  _SkeletonState(this.body);

  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DontDonateYourWork'),
        actions: [
          (this.body.runtimeType == AccountView) ? 
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,  
            ), 
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Skeleton())
              );

            },
          ) : 
          IconButton(
            icon: Icon(Icons.account_circle), 
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Skeleton(body: AccountView())),
              );
            }
          ),
        ],
      ),
      body: this.body,
    );
  }
}
