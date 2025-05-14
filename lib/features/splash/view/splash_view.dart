import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:activity_tracker_app/widgets/button_widget.dart';
import 'package:activity_tracker_app/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/appicon.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Tracker App",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                'Plan what you will do to be more organized for today, tomorrow and beyond',
                textAlign: TextAlign.center,
                style: TextStyle(
                    overflow: TextOverflow.visible,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textClor)),
            SizedBox(
              height: 30,
            ),
            ButtonWidget(
                buttonTitle: "Login",
                onPressed: () {
                  print("Buton Pressed");
                }),
            TextButtonWidget(
                buttonTitle: "Sign up",
                onPressed: () {
                  print("Buton Pressed");
                }),
          ],
        ),
      ),
    );
  }
}
//5B67CA