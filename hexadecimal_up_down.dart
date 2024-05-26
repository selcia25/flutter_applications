import 'package:flutter/material.dart';

void main() => runApp(HexCounterApp());

class HexCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hexadecimal Counter',
      home: HexCounter(),
    );
  }
}

class HexCounter extends StatefulWidget {
  @override
  _HexCounterState createState() => _HexCounterState();
}

class _HexCounterState extends State<HexCounter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count = (_count + 1) % 256; // Wrap around at FF
    });
  }

  void _decrement() {
    setState(() {
      _count = (_count - 1) % 256; // Wrap around at 00
    });
  }

  @override
  Widget build(BuildContext context) {
    String hex = _count.toRadixString(16).toUpperCase().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(
        title: Text('Hexadecimal Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '0x$hex',
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
