import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountingScreen(),
    );
  }
}

class CountingScreen extends StatefulWidget {
  @override
  _CountingScreenState createState() => _CountingScreenState();
}

class _CountingScreenState extends State<CountingScreen> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++%8;
    });
  }

  void _resetCount() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              '0o${_count.toRadixString(8)}',
              style: TextStyle(fontSize: 48.0),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCount,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: _resetCount,
            tooltip: 'Reset',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
