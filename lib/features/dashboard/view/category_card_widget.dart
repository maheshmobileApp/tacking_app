
import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
const CategoryCardWidget({ Key? key,required this.categoryModel }) : super(key: key);
final  categoryModel;

  @override
  Widget build(BuildContext context){
    return Card(
      color: categoryModel.color,
      child: Row(
        children: [
          Column(
            children: [
              categoryModel.icon,
              Text(categoryModel.title),
              Text(categoryModel.count.toString())
            ],
          ),

        ],
      )
    );
  }
}