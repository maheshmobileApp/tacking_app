import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:activity_tracker_app/features/dashboard/model/category_model.dart';
import 'package:activity_tracker_app/features/dashboard/view/category_card_widget.dart';
import 'package:activity_tracker_app/features/dashboard/view/userInfo_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> taskCategories = [
    CategoryModel(
        icon: Image.asset("assets/completed.png"),
        title: "Complted",
        count: 10,
        color: AppColors.completed),
    CategoryModel(
        icon: Image.asset("assets/pending.png"),
        title: "Pending",
        count: 10,
        color: AppColors.pending),
    CategoryModel(
        icon: Image.asset("assets/canceled.png"),
        title: "Cancelled",
        count: 10,
        color: AppColors.cancelled),
    CategoryModel(
        icon: Image.asset("assets/ongoing.png"),
        title: "On Going",
        count: 10,
        color: AppColors.onGoing)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      backgroundColor: AppColors.screenBgColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              child: UserInfoCard(
                userName: "Hi, Steven",
                infoText: "Let’s make this day productive",
              ),
            ),
            Expanded(
              flex: 5,
              child: createTasksCategoryWidget()),
            Expanded(
              flex: 1,
              child: createTodayTasksListWidget())
          ],
        ),
      ),
    ));
  }

  Widget createTasksCategoryWidget() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // two columns
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) {
        return CategoryCardWidget(
          categoryModel: taskCategories[index],
        );
      },
      itemCount: taskCategories.length,
    );
  }

  Widget createTodayTasksListWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: Text("hello"),
        );
      },
      itemCount: 10,
    );

  }
}

/*
user info card
Gridview -> category of task (pending, completed,cancelled and inprogress)
List of tos taks 
 */
