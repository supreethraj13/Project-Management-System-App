import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Projects'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Text('Project 1'),
                ),
                Card(
                  child: Text('Project 2'),
                ),
                Card(
                  child: Text('Project 3'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
