import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('ToDo'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
