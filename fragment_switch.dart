import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}


class Fragment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Fragment 1'),
    );
  }
}


class Fragment2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Fragment 2"),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  static List<Widget> _fragments = [Fragment1(), Fragment2()];


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index, duration: Duration(microseconds: 300), curve: Curves.bounceIn);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Fragment Switcher"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => {
          setState(() {
            _selectedIndex = index;
          }),
        },
        children: _fragments,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Fragment 1',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Fragment 2',
          ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          ),
    );
  }
}
