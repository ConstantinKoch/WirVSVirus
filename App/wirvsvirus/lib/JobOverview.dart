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
        return ListTile(
          title: Text(job.title),
          subtitle: Text('Employer: ' + job.employer + ' Donation: ' + job.donation.toString() + ''),
        );
      }
    );
  }
}
