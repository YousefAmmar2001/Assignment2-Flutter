import 'package:assignment2/views/screens/all_tasks_screen.dart';
import 'package:assignment2/views/screens/complete_tasks.dart';
import 'package:assignment2/views/screens/incomplete_tasks.dart';
import 'package:flutter/material.dart';

class SmallScreen extends StatefulWidget {
  const SmallScreen({super.key});

  @override
  State<SmallScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<SmallScreen> {
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
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Yousef Ammar"),
                accountEmail: Text('Yousef@gmail.com')),
            ListTile(
              onTap: () {
                pageIndex = 0;
                pageController.jumpToPage(0);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('All Tasks'),
              subtitle: const Text('Go to All Tasks'),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageIndex = 1;
                pageController.jumpToPage(1);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('Complete Tasks'),
              subtitle: const Text('Go to Complete Tasks'),
              leading: const Icon(Icons.done),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                pageIndex = 2;
                pageController.jumpToPage(2);
                Navigator.of(context).pop();
                setState(() {});
              },
              title: const Text('InComplete Tasks'),
              subtitle: const Text('Go to InComplete Tasks'),
              leading: const Icon(Icons.cancel),
              trailing: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
