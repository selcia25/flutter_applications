import 'package:flutter/material.dart';

bool isPalindrome(String str) {
  int start = 0;
  int end = str.length - 1;

  while (start < end) {
    if (str[start] != str[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Palindrome Checker'),
        ),
        body: PalindromeChecker(),
      ),
    );
  }
}

class PalindromeChecker extends StatefulWidget {
  @override
  _PalindromeCheckerState createState() => _PalindromeCheckerState();
}

class _PalindromeCheckerState extends State<PalindromeChecker> {
  TextEditingController _controller = TextEditingController();
  bool _isPalindrome = false;

  void _checkPalindrome() {
    setState(() {
      _isPalindrome = isPalindrome(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter a string',
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _checkPalindrome,
            child: Text('Check Palindrome'),
          ),
          SizedBox(height: 16.0),
          Text(
            _isPalindrome ? 'Palindrome' : 'Not a Palindrome',
            style: TextStyle(fontSize: 24.0),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
