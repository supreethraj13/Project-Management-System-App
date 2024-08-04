// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/Components/Add_project_page.dart';
import '/Components/Project_Details.dart';
import '/Pages/Home_Page.dart';
import '../Datatypes/Project_data_model.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  final List<Projects> Project_List = [
    Projects(
      'Project1',
      'Task1',
      'diaul',
      Colors.blueAccent,
      DateTime.now(),
    ),
  ];

  void _ShowNewProjectTab(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return AddProjectPage(_AddNewProject);
        });
  }

  void _AddNewProject(
      String Title, String Description, Color color, DateTime deadline) {
    final newNote = Projects(
        Title, Description, DateTime.now().toString(), color, deadline);
    setState(() {
      Project_List.add(newNote);
    });
    Navigator.pop(context);
  }

  void DeleteProject(String id) {
    setState(() {
      Project_List.removeWhere((tx) => tx.id == id);
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Home_Page()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Projects',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          trailing: IconButton(
            onPressed: () {
              _ShowNewProjectTab(context);
            },
            icon: Icon(Icons.add),
          ),
        ),
        // Project Display Card
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Project_List.map((tx) {
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.black,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                ProjectDetails(tx, DeleteProject)));
                      },
                      child: Card(
                        color: tx.color,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              tx.color == Colors.blueAccent
                                  ? Icons.group
                                  : tx.color == Colors.yellowAccent
                                      ? Icons.work
                                      : Icons.person,
                              size: 100,
                            ),
                            Text(
                              tx.Title,
                              style: TextStyle(fontSize: 48),
                              softWrap: true,
                            ),
                            Text(
                              tx.isDone == false ? 'Due' : 'Completed',
                              style: TextStyle(fontSize: 24),
                              softWrap: true,
                            ),
                            tx.isDone == false
                                ? Text(
                                    DateFormat.yMMMMd()
                                        .add_jm()
                                        .format(tx.deadline),
                                    style: TextStyle(fontSize: 18),
                                  )
                                : Text('')
                          ],
                        ),
                      )),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
