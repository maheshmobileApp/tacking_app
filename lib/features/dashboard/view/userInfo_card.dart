
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
const UserInfoCard({ Key? key,required this.userName,required this.infoText }) : super(key: key);
final String userName;
final String infoText;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
              SizedBox(height: 10,),
              Text(infoText,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
            ],
          ),
          Image.asset("assets/user.png")
        ],
      ),
    );
}}