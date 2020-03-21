class Jobs {
  int id;
  final String title;
  final String employer;
  final Donation donation;

  Jobs({this.id, this.title, this.employer, this.donation});
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
    Jobs(id: 1, title: 'Regale einräumen', employer: 'Rewe', donation: Donation(20.00)),
    Jobs(id: 2, title: 'Einkäufe erledigen', employer: 'Oma Hilde', donation: Donation(00.00)),
    Jobs(id: 3, title: 'Klopapierkäufer kontrollieren', employer: 'Aldi', donation: Donation(10.00)),
  ];
  return jobArr;
}
List<Jobs> getFavJobs(){
  var jobArr = [
    Jobs(id: 1, title: 'Regale einräumen', employer: 'Rewe', donation: Donation(20.00)),
  ];
  return jobArr;
}

