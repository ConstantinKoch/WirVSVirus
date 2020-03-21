class Jobs {
  final String title;
  final String employer;
  final Donation donation;

  Jobs({this.title, this.employer, this.donation});
}

class Donation {
  final double donation;
  Donation(this.donation);

  @override
  String toString() {
    return '' + this.donation.toString() + '0 €';
  }
}

List<Jobs> getJobs() {
  var jobArr = [
    Jobs(title: 'Regale einräumen', employer: 'Rewe', donation: Donation(20.00)),
    Jobs(title: 'Einkäufe erledigen', employer: 'Oma Hilde', donation: Donation(00.00)),
    Jobs(title: 'Klopapierkäufer kontrollieren', employer: 'Aldi', donation: Donation(10.00)),
  ];

  return jobArr;
}

