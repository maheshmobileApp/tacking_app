
/*
 {
      "icon":"",
      "title":"Personal",
      "count":10
    }
 */

import 'package:flutter/material.dart';

class CategoryModel {
  final Widget icon;
  final String title;
  final int count;
  final Color color;
  CategoryModel({required this.icon, required this.title, required this.count,required this.color});
}