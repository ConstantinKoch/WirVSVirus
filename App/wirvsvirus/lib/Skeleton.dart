import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wirvsvirus/FavoriteJobList.dart';
import 'package:wirvsvirus/JobOverview.dart';
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
        title: Text('DonateYourWork'),
        actions: [
          (this.body.runtimeType == AccountView) ? 
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,  
            ), 
            onPressed: null,
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
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        color: Colors.blue,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 210),
        items: <Widget>[
          Icon(Icons.list, size: 20, color: Colors.white,),
          Icon(Icons.add, size: 20, color: Colors.white,),
          Icon(Icons.map, size: 20, color: Colors.white,),
          Icon(Icons.favorite, size: 20, color: Colors.white,),
        ],
        onTap: (item) {
          switch(item){
            //TODO: Add other cases
            case 3: {
              print("3 clicked");
              Navigator.push(context, MaterialPageRoute(builder: (context) => Skeleton(body: FavoriteJobList())));
            }
            break;
          }
          print("You selected: "+item.toString());
        },
      ),
    );
  }
}
