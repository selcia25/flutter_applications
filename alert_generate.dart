import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Alert',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _showMessageAlert() {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('New Message Received'),
          content: Text('You have a message'),
          actions: [
            BackButton(
      
            ),
          ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Message Alert"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMessageAlert();
          }, 
          child: Text("Receive new message")
          ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
