import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wirvsvirus/AccountView.dart';
import 'package:wirvsvirus/JobDetails.dart';
import 'package:wirvsvirus/Skeleton.dart';
import 'Jobs.dart';
import 'Skeleton.dart';

class JobOverview extends StatelessWidget {
  final List<Jobs> jobs = getJobs();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = this.jobs[index];
        // return JobListTile(job);
        return ListTile(
          leading: Container(
              padding: EdgeInsets.only(top: 3.0),
              width: 40.0,
            child:Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(IconData(59475, fontFamily: 'MaterialIcons')),
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
            subtitle: Row(
              children: [
                Text(job.employer), 
                Spacer(),
                Text('Spende: ' + job.donation.toString()),
              ],
            ),
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
    );
  }
}



class JobListTile extends ListTile {
  final Jobs job;

  JobListTile(this.job);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      padding: EdgeInsets.all(20.0),
      crossAxisSpacing: 100,
      mainAxisSpacing: 10,
      children: <Widget>[
        Container(
        )
      ],
    );
  }
}