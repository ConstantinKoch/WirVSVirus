import 'package:flutter/material.dart';
import 'package:wirvsvirus/Account.dart';

class JobDetails extends StatelessWidget{
  final user = Account(2, 'Aldi', 'Peter', 'Schmidt', 'Bin arbeitslos, lol!');

  @override
  Widget build(BuildContext context) {
    return Column(
    );
        ),
        ListTile(
        ),
            title: Text('Lastname: ' + user.getLastname)
        ListTile(
            title: Text('Description: ' + user.getDescription)
        ),
      ],
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: FittedBox(
            child: Icon(Icons.account_circle),
            fit: BoxFit.contain,
          ),
        ListTile(
        ),
            title: Text('Username: ' + user.getUsername)
        ),
        ListTile(
            title: Text('Firstname: ' + user.getFirstname)
  }
}