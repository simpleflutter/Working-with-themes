import 'package:flutter/material.dart';
import 'package:theme_demo/subject.dart';
import 'package:theme_demo/subject_card.dart';

class HomePage extends StatelessWidget {
  final Subject maths = Subject(
    title: 'Mathematics',
    descreption:
        'Fun learning with formulas & diagrams. Clear your doubts form experts.',
    theory: 27,
    practicles: 38,
  );

  final Subject physics = Subject(
    title: 'Physics',
    descreption:
        'Excellent course material designed with practical & numericals. Clear your doubts form experts.',
    theory: 52,
    practicles: 47,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('StudApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.import_export,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My Studies',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: Theme.of(context).iconTheme.size,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SubjectCard(subject: maths),
          SubjectCard(subject: physics),
        ],
      ),
    );
  }
}
