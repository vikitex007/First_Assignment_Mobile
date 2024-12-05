import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/student.dart';

class StudentListview extends StatelessWidget {
  final dynamic lstStudents;

  const StudentListview({super.key, required this.lstStudents});


  // final List<Student> lstStudents;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lstStudents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.abc_outlined),
            title: Text(
                '${lstStudents[index].fname} ${lstStudents[index].lname}'),
            subtitle: Text(lstStudents[index].city),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.delete)),
          );
        },
      ),
    );
  }
}
