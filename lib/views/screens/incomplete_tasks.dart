// ignore_for_file: must_be_immutable

import 'package:assignment2/data/data_source.dart';
import 'package:assignment2/views/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:
            DataSource.tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              DataSource.tasks
                  .where((element) => !element.isComplete)
                  .toList()[index],
              function);
        });
  }
}
