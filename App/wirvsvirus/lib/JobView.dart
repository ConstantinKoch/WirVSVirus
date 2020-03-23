import 'package:flutter/material.dart';
import 'package:wirvsvirus/Jobs.dart';

class JobView extends StatefulWidget {
    final Jobs job;
    JobView(this.job);

    @override
    _JobViewState createState() => _JobViewState(job);
}

class _JobViewState extends State<JobView> {
  final Jobs job;
  bool pressed = false;
  _JobViewState(this.job);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Icon(Icons.account_circle),
          ),
        ),
        ListTile(
          title: Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(job.title)
            ],
          ),
        ),
        ListTile(
          title: Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(job.employer)
            ],
          ),
        ),
        ListTile(
          title: Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(job.donation.toString())
            ],
          ),
        ),
        ListTile(
          title: Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  (this.pressed ? Icons.favorite : Icons.favorite_border),
                  color: Colors.red,
                ), 
                onPressed: () {
                  setState(() {
                    this.pressed = !this.pressed;
                  });
                }),
            ],
          ),
        ),
        ListTile(
          title: Text('Beschreibung: Hilf uns einen der gößten Hackathons aller Zeiten auf die Beine zu stellen und damit ein Zeichen des Zusammenhalts auch in Zeiten wie diesen zu setzen. Danke, an alle Teilnehmer, die dieses tolle Projekt überhaupt erst möglich gemacht haben!')
        ),
      ],
    );
  }
}