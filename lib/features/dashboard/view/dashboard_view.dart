
import 'package:activity_tracker_app/features/create_task/create_task_screen.dart';
import 'package:activity_tracker_app/features/dashboard/view/home_screen.dart';
import 'package:activity_tracker_app/features/graphs/analytics_screen.dart';
import 'package:activity_tracker_app/features/profile/profile_screen.dart';
import 'package:activity_tracker_app/features/tasks/tasks_list_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({ Key? key }) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final List<Widget> _pages = [
    HomeScreen(),
    TasksListScreen(),
    CreateTaskScreen(),
    AnalyticsScreen(),
    ProfileScreen()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        // backgroundColor: Colors.white,
        initialActiveIndex: _currentIndex,
        onTap: (index) {
          print("index $index");
          setState(() {
            _currentIndex = index;
          });
        },
        style: TabStyle.fixed,
        items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.task, title: 'task'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icon(Icons.analytics), title: 'Analytics'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],)
    );
}
}