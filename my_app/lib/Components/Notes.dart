import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Notes'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
