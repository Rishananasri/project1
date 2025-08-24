import 'package:flutter/material.dart';
import 'package:project2/screens/home.dart';
import 'package:project2/screens/play.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;
  List<Widget> widgetList = [Home(), Play()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: widgetList, index: myIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bottomnavimg/icon.home.png"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bottomnavimg/icon.play.png"),
            ),
            label: "Play",
            backgroundColor: Color.fromARGB(255, 35, 35, 35),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bottomnavimg/icon.categories.png"),
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bottomnavimg/icon.person.png"),
            ),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/bottomnavimg/icon.trolley.png"),
            ),
            label: "cart",
          ),
        ],
      ),
    );
  }
}
