import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Reversing Digits"),
        ),
        body: ReverseDigits(),
      ),
    );
  }
}

class ReverseDigits extends StatefulWidget {
  State<ReverseDigits> createState() => _ReverseDigitsState();
}

class _ReverseDigitsState extends State<ReverseDigits> {
  TextEditingController _numberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                int number = int.tryParse(_numberController.text) ?? 0;
                int reversed_digits = reverse_digits(number);
                setState(() {
                  _result = '$number is reversed to $reversed_digits'; 
                });
                }, 
              child: Text('Reverse the digits')),
            SizedBox(height: 16),
            Text(_result)
          ],
        ),
      );
  }
}

int reverse_digits(int number) {
  int reversedNumber = 0;
  while (number > 0) {
    int digit = number % 10;
    reversedNumber = (reversedNumber * 10) + digit;
    number ~/= 10;
  }
  return reversedNumber;
}