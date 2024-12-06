import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("My container page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center( // Added Center for proper alignment in SafeArea
          child: Container(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: const Text('I am a Container'),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightBlue,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
