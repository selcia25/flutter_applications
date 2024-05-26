import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GCD Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("GCD Calculator"),
          ),
        body: GCDCalculator(),
        ),
    );
  }
}

class GCDCalculator extends StatefulWidget {

  @override
  State<GCDCalculator> createState() => _GCDCalculatorState();
}

class _GCDCalculatorState extends State<GCDCalculator> {
  TextEditingController _numberController1 = TextEditingController();
  TextEditingController _numberController2 = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _numberController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter first number"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                int number1 = int.tryParse(_numberController1.text) ?? 0;
                int number2 = int.tryParse(_numberController2.text) ?? 0;
                int gcd = calculate_gcd(number1, number2);
                setState(() {
                  _result = 'GCD of $number1 and $number2 is $gcd';
               });
              },
              child: Text("Calculate GCD"),
            ),
            SizedBox(height: 16),
            Text(_result),
          ],
        ),
      );
  }
}

int calculate_gcd(int number1, int number2) {
  while (number2 != 0) {
    int remainder = number1 % number2;
    number1 = number2;
    number2 = remainder;
  }
  return number1;
}