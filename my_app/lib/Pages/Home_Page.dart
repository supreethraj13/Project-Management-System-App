import 'package:flutter/material.dart';

import 'package:my_app/Components/Chart_View.dart';
import 'package:my_app/Components/Notes.dart';
import 'package:my_app/Components/Project_list.dart';
import 'package:my_app/Components/ToDo.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 300,
        child: ListView(
          children: [
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
              icon: Icon(Icons.menu));
        }),
        title: Text('Project Manager'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person_sharp))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ChartView(), ProjectList(), Notes(), ToDo()],
        ),
      ),
    );
  }
}
