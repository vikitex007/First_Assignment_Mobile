import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_class/view/student_details_view.dart';
import 'package:listview_class/view/student_output_view.dart';

//named route
void main(){
  runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/':(context)=> const StudentDetailsView(),
          '/output':(context)=> const StudentOutputView(),
        },
    )
  );
}