import 'package:flutter/material.dart';

class ChartView extends StatelessWidget {
  const ChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Chart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Container(
          height: 350,
          width: 350,
          color: Colors.amber,
          child: Center(child: Text('Chart')),
        ),
      ],
    );
  }
}
