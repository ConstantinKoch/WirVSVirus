import 'package:flutter/material.dart';

import 'Account.dart';

class AccountView extends StatelessWidget {
  final user = Account('peter1', 'Peter', 'Schmidt', 'Bin arbeitslos, lol!');
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Icon(Icons.account_circle),
          ),
        ),
        ListTile(
          title: Text('Username: ' + user.getUsername)
        ),
        ListTile(
          title: Text('Firstname: ' + user.getFirstname)
        ),
        ListTile(
          title: Text('Lastname: ' + user.getLastname)
        ),  
        ListTile(
          title: Text('Description: ' + user.getDescription)
        ),
      ],
    );
  }
}