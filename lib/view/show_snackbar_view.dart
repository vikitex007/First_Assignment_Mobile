import 'package:first_assignment/common/my_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowSnackbarView extends StatefulWidget {
  const ShowSnackbarView({super.key});

  @override
  State<ShowSnackbarView> createState() => _ShowSnackbarViewState();
}

class _ShowSnackbarViewState extends State<ShowSnackbarView> {
  _show1(){
    return showMYSnackBar(context: context, message: "Sucess");

}
  _show2() {
    return showMYSnackBar(
        context: context,
        message: "Fail",
        color: Colors.red);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appbar"),
      ),
      body: Column(children: [
        ElevatedButton(onPressed:_show1, child: Text("Button1")),
        ElevatedButton(onPressed:_show2, child: Text("Button2"))
      ],

      ),
    );
  }
}
