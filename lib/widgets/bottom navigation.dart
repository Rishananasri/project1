import 'package:flutter/material.dart';
import 'package:project2/screens/account.dart';
import 'package:project2/screens/cart.dart';
import 'package:project2/screens/category.dart';
import 'package:project2/screens/home.dart';
import 'package:project2/screens/play.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;
  List<Widget> widgetList = [Home(), Play(), Category(), Account(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: myIndex, children: widgetList),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        backgroundColor: myIndex == 1 ? Colors.black : Colors.white,
        selectedItemColor: myIndex == 1 ? Colors.white : Colors.grey,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: myIndex == 1 ? Colors.white : Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home,
              color: const Color.fromARGB(255, 20, 89, 199),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_outlined,
              color: myIndex == 1 ? Colors.white : Colors.grey,
            ),
            activeIcon: Icon(Icons.play_circle, color: Colors.white),
            label: "Play",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              color: myIndex == 1 ? Colors.white : Colors.grey,
            ),
            activeIcon: Icon(
              Icons.category,
              color: const Color.fromARGB(255, 20, 89, 199),
            ),
            label: "Categories",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_3_outlined,
              color: myIndex == 1 ? Colors.white : Colors.grey,
            ),
            activeIcon: Icon(
              Icons.person_3,
              color: const Color.fromARGB(255, 20, 89, 199),
            ),
            label: "Account",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: myIndex == 1 ? Colors.white : Colors.grey,
            ),
            activeIcon: Icon(
              Icons.shopping_cart,
              color: const Color.fromARGB(255, 20, 89, 199),
            ),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
