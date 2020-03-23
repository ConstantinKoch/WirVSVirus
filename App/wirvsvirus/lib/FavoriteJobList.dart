import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wirvsvirus/Jobs.dart';

import 'AccountView.dart';
import 'JobDetails.dart';
import 'Skeleton.dart';

class FavoriteJobList extends StatelessWidget{
  final List<Jobs> favJobs = getFavJobs();
  @override
  Widget build(BuildContext context) {
    print ("builder");
    return ListView.builder(
        itemCount: favJobs.length,
        itemBuilder: (context, index){
          final job = this.favJobs[index];
          return FavListTile(job);
        });
  }
}

class FavListTile extends ListTile {
  final Jobs job;
  FavListTile(this.job);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          padding: EdgeInsets.only(top: 3.0),
          width: 40.0,
          child:Column(
            children: <Widget>[
              IconButton(
                icon:Icon(IconData(59475, fontFamily: 'MaterialIcons')),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context) => Skeleton(body: AccountView()/*TODO change to Account activity*/)
                  )
                  );
                },
                iconSize: 35.0,
              ),
            ],
          )
      ),
      title: Text(job.title),
      subtitle: Text('Employer: ' + job.employer + ', Donation: ' + job.donation.toString()),
      trailing: IconButton(
        icon: Icon(IconData(58377, fontFamily: 'MaterialIcons', matchTextDirection: true)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder:(context) => Skeleton(body: JobDetails())
          )
          );
        },
      ),
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => Skeleton(body: JobDetails())
        )
        );
      }
      ),
    );
  }
}