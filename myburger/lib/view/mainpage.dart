import 'package:flutter/material.dart';
import 'package:myburger/model/user.dart';
import 'tabpage1.dart';
import 'tabpage2.dart';
import 'tabpage3.dart';

class MainPage extends StatefulWidget {
  final User user;

  const MainPage({Key? key, required this.user}) : super(key: key);
  

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Buyer";

  @override
  void initState() {
    super.initState();
    tabchildren = const [
      TabPage1(),
      TabPage2(),
      TabPage3(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ann's Hot Burger",
        style: TextStyle (fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: "Buyer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile")
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        maintitle = "Buyer";
      }
      if (_currentIndex == 1) {
        maintitle = "Menu";
      }
      if (_currentIndex == 2) {
        maintitle = "Profile";
      }
    });
  }
}