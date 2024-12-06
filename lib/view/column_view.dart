import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
        centerTitle: true,
        elevation: 0,
      ),
      body:Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Icon(Icons.star,size: 50,color: Colors.green),
            // Icon(Icons.star,size: 50,color: Colors.yellow),
            // Spacer(),
            // Icon(Icons.star,size: 50,color: Colors.yellow),
             ElevatedButton(onPressed: (){}, child: const Text("data")),
             ElevatedButton(onPressed: (){}, child: const Text("data")),
             ElevatedButton(onPressed: (){}, child: const Text("data"))
          ],
        ),
      )
    );
  }
}