import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_class/core/common/student_listview.dart';
import 'package:listview_class/model/student.dart';

class StudentOutputView extends StatefulWidget {
  const StudentOutputView({super.key});

  @override
  State<StudentOutputView> createState() => _StudentOutputViewState();
}

class _StudentOutputViewState extends State<StudentOutputView> {
  List<Student> lstStudents = [];
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: lstStudents.isEmpty
            ? Center(child: Text("No Data"))
            : StudentListview(lstStudents: lstStudents));
  }
}
