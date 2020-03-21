import 'package:flutter/material.dart';
import 'Jobs.dart';

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
          title: Text(job.title),
          subtitle: Text('Employer: ' + job.employer + ', Donation: ' + job.donation.toString()),
        );
      }
    );
  }
}

//ToDO fertig implementieren
/*
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
*/