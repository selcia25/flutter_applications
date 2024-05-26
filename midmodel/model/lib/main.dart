import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Selcia';
  String batch = '2021-2025';
  String institute = 'SSN';
  Color textColor = Colors.black;
  Color backgroundColor = Colors.yellow;

  void changeColors(Color newTextColor, Color newBgColor) {
    setState(() {
      textColor = newTextColor;
      backgroundColor = newBgColor;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Profile"),
      ),
      body: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24.0, color: textColor),
            ),
            Text(
              batch,
              style: TextStyle(fontSize: 18.0, color: textColor),
            ),
            Text(
              institute,
              style: TextStyle(fontSize: 18.0, color: textColor),
            ),
            SizedBox(height: 40.0,),
            ElevatedButton(
              onPressed: () => changeColors(Colors.black, Colors.white), 
              child: Text("Default Colors"),
              ),
            SizedBox(height: 40.0,),
            ElevatedButton(
              onPressed: () => changeColors(const Color.fromARGB(255, 255, 255, 255), Colors.blue), 
              child: Text("Blue Theme")
              ),
            SizedBox(height: 40.0,),
            ElevatedButton(
              onPressed: () => changeColors(const Color.fromARGB(255, 255, 255, 255), Colors.green), 
              child: Text("Green Theme"),
              )
          ],
        ),
      ),
      
    );
  }
}
