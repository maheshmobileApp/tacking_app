import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key, required this.buttonTitle, required this.onPressed})
      : super(key: key);
  final String buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
            alignment: Alignment.center,
            //  width: width,
            height: 45,
            decoration: BoxDecoration(
              color: Color.fromRGBO(31, 65, 187, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              buttonTitle,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            )));
  }
}
