import 'package:flutter/material.dart';

void main() => runApp(DecimalCounterApp());

class DecimalCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decimal Counter',
      home: DecimalCounter(),
    );
  }
}

class DecimalCounter extends StatefulWidget {
  @override
  _DecimalCounterState createState() => _DecimalCounterState();
}

class _DecimalCounterState extends State<DecimalCounter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decimal Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _increment,
                  child: Icon(Icons.arrow_upward),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: _decrement,
                  child: Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
