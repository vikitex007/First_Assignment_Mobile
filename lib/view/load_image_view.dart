import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image page"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.5,
                width: MediaQuery.of(context).size.width*.5,

                  child: Image.asset("./assets/images/image1.png")),
              constraints: BoxConstraints.expand(height: 200),
              decoration: BoxDecoration(
                  color: Colors.teal
              ),

            ),
          ],
        ),
      ),
    );
  }
}








// body: SingleChildScrollView(
// child: Column(
// children: [
// Container(
// child: Image.asset("./assets/images/image1.png"),
// constraints: BoxConstraints.expand(height: 200),
// decoration: BoxDecoration(
// color: Colors.green
// ),
//
// ),
// Container(
//
// child: Image.asset("./assets/images/image2.png"),
//
// constraints: BoxConstraints.expand(height: 200),
// decoration: BoxDecoration(
// color: Colors.black38
// ),
// ),
// Container(
// child: Image.asset("./assets/images/image2.png"),
//
// constraints: BoxConstraints.expand(height: 200),
// decoration: BoxDecoration(
// color: Colors.black38
// ),
// ),
// Container(
// child: Image.asset("./assets/images/image2.png"),
//
// constraints: BoxConstraints.expand(height: 200),
// decoration: BoxDecoration(
// color: Colors.black38
// ),
// ),
// Container(
// child: Image.asset("./assets/images/image2.png"),
//
// constraints: BoxConstraints.expand(height: 200),
// decoration: BoxDecoration(
// color: Colors.black38
// ),
// ),
//
//
// ],
// ),
// ),