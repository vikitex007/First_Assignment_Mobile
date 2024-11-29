import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;

  // Global key for form state
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              // Input field for the first number
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  first = int.tryParse(value) ?? 0;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the first number';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10), // Spacer

              // Input field for the second number
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  second = int.tryParse(value) ?? 0;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the second number';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20), // Spacer

              // Display the result
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20), // Spacer

              // Button for Addition
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(height: 10), // Spacer

              // Button for Subtraction
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = first - second;
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
