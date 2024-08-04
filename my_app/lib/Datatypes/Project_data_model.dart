import 'package:flutter/material.dart';

class Projects {
  final String Title;
  final String Description;
  final String id;
  final Color color;
  bool isDone = false;
  final DateTime deadline;

  Projects(
    @required this.Title,
    this.Description,
    this.id,
    @required this.color,
    this.deadline,
  );
}
