import 'package:flutter/material.dart';
import 'package:listview_class/view/individual_student_view.dart';
import '../../model/student.dart';

class StudentListview extends StatelessWidget {
  final List<Student> lstStudents;

  const StudentListview({super.key, required this.lstStudents});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lstStudents.length,
        itemBuilder: (context, index) {
          final student = lstStudents[index];
          return ListTile(
            onTap: () {
              // Navigate to IndividualStudentView with the selected student
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndividualStudentView(student: student),
                ),
              );
            },
            leading: const Icon(Icons.person),
            title: Text('${student.fname} ${student.lname}'),
            subtitle: Text(student.city),
            trailing: IconButton(
              onPressed: () {
                // Handle delete action if necessary
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
