import 'package:assignment2/views/screens/all_tasks_screen.dart';
import 'package:assignment2/views/screens/complete_tasks.dart';
import 'package:assignment2/views/screens/incomplete_tasks.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<LargeScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageIndex,
            onTap: (v) {
              pageIndex = v;
              pageController.jumpToPage(v);
              updateScreen();
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "All Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.done), label: "Complete Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.cancel), label: "InComplete Tasks"),
            ]),
        appBar: AppBar(
          title: const Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 0;
                    pageController.jumpToPage(0);
                    updateScreen();
                  },
                  child: const Text('Go to All Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 1;
                    pageController.jumpToPage(1);
                    updateScreen();
                  },
                  child: const Text('Go to Complete Tasks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    pageIndex = 2;
                    pageController.jumpToPage(2);
                    updateScreen();
                  },
                  child: const Text('Go to InComplete Tasks'),
                ),
              ],
            )),
            Expanded(
                child: PageView(
              controller: pageController,
              children: [
                AllTasksScreen(updateScreen),
                CompleteTasksScreen(updateScreen),
                InCompleteTasksScreen(updateScreen)
              ],
            ))
          ],
        ));
  }
}
