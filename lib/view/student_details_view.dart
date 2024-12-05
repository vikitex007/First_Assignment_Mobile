import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_class/core/common/student_listview.dart';
import 'package:listview_class/model/student.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = const SizedBox(
    height: 8,
  );
  final items = [
    DropdownMenuItem(value: 'Kathmandu', child: Text("Kathmandu")),
    DropdownMenuItem(value: 'Pokhara', child: Text("Pokhara")),
    DropdownMenuItem(value: 'Chitwan', child: Text("Chitwan")),
    DropdownMenuItem(value: 'hetauda', child: Text("Hetauda")),
  ];
  List<Student> lstStudents = [];

  String? selectedcity;
  //Controllers
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: InputDecoration(
                labelText: "Enter fname",
                border: OutlineInputBorder(),
              ),
            ),

            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: InputDecoration(
                labelText: "Enter lname",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {
                setState(() {
                  selectedcity = value;
                });
              },
              decoration: InputDecoration(
                  labelText: "Select City", border: OutlineInputBorder()),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Student student = Student(
                        fname: _fnameController.text.trim(),
                        lname: _lnameController.text.trim(),
                        city: selectedcity!);
                    setState(() {
                      lstStudents.add(student);
                    });
                  },
                  child: const Text('Add Student')),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/output', arguments: lstStudents);
                  }, child: const Text('View Students')),
            ),

            // Display student details in listview
            lstStudents.isEmpty
                ? Text("No Data")
                : StudentListview(lstStudents: lstStudents)
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _fnameController.dispose();
    _lnameController.dispose();
    super.dispose();
  }
}
