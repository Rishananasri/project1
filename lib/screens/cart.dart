import 'package:flutter/material.dart';
import 'package:project2/widgets/flipkart.dart';
import 'package:project2/widgets/grocery.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          bottom: TabBar(
            labelColor: const Color.fromARGB(255, 33, 55, 247),
            labelStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
            unselectedLabelColor: const Color.fromARGB(137, 0, 0, 0),
            indicatorColor: const Color.fromARGB(255, 33, 55, 247),
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Flipkart"),
              Tab(text: "Grocery"),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 237, 242, 250),
        body: TabBarView(children: [fli(), gro()]),
      ),
    );
  }
}
