import 'package:activity_tracker_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
const TaskCardWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: AppColors.cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(height: 40,width: 4,color: Colors.red,),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cleaning Clothes",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.textClor),),
                                                SizedBox(
                            height: 10,
                          ),

                             Text("07:00 - 07:15",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.durationTextColor))
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.offline_bolt)
                ],
              ),
              SizedBox(height: 20,),
              Wrap(
                spacing: 3,
                children: [
                  Chip(label: Text("Urgent")),
                  Chip(label: Text("Home")),
                   Chip(label: Text("Urgent")),
              
                ],)
            ],
          ),
        ),
      ),
    );
  }
}