// ignore_for_file: must_be_immutable

import 'package:assignment2/data/data_source.dart';
import 'package:assignment2/views/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index], fun);
        });
  }
}
