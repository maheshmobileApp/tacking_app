import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {Key? key, required this.buttonTitle, required this.onPressed})
      : super(key: key);
  final String buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child:Text(buttonTitle,style: TextStyle(color: AppColors.primary),) );
  }
}
