import 'package:flutter/material.dart';

import 'package:my_app/Components/Chart_View.dart';
import 'package:my_app/Components/Notes.dart';
import 'package:my_app/Components/Project_list.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          width: 300,
          child: ListView(
            children: const [
              ListTile(
                title: Text('option'),
              ),
              ListTile(
                title: Text('option'),
              ),
              ListTile(
                title: Text('option'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu));
          }),
          title: const Text('Project Manager',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person_sharp))
          ],
        ),
        body: ListView(
          children: const [ChartView(), ProjectList(), Notes()],
        ));
  }
}
