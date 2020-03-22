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
    Jobs(title: 'Regale einräumen', employer: 'Littl', donation: Donation(20.00)),
    Jobs(title: 'Einkäufe erledigen', employer: 'Oma Hilde', donation: Donation(00.00)),
    Jobs(title: 'Klopapierkäufer kontrollieren', employer: 'Alda', donation: Donation(15.00)),
    Jobs(title: 'Hund Gassi führen', employer: 'Dr. Schmidt', donation: Donation(5.0)),
    Jobs(title: 'Hackathon gegen Corona organisieren', employer: 'Bundesledierung', donation: Donation(30.0)),
    Jobs(title: 'Essen an Bedürftige liefern', employer: 'Essen auf Reifen', donation: Donation(10.0)),
    Jobs(title: 'Kinderbetreuung', employer: 'Christine Wolf', donation: Donation(15.0)),
    Jobs(title: 'Mundschutz an Bedürftige ausliefern', employer: 'Deutscher Rotes Schnneuz', donation: Donation(15.0)),
  ];

  return jobArr;
}

