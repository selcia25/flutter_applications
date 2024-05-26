import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextStylingPage(),
    );
  }
}

class TextStylingPage extends StatefulWidget {
  @override
  _TextStylingPageState createState() => _TextStylingPageState();
}

class _TextStylingPageState extends State<TextStylingPage> {
  Color _textColor = Colors.black;
  double _textSize = 16.0;

  void _changeColor(Color color) {
    setState(() {
      _textColor = color;
    });
  }

  void _changeSize(double size) {
    setState(() {
      _textSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styling Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sample Text',
              style: TextStyle(color: _textColor, fontSize: _textSize),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.red),
                  child: Text('Red Color'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.blue),
                  child: Text('Blue Color'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _changeSize(16.0),
                  child: Text('Normal Size'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () => _changeSize(24.0),
                  child: Text('Large Size'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
