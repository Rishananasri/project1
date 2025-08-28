import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Orders")),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.2,
                  color: const Color.fromARGB(225, 220, 219, 219),
                ),
                top: BorderSide(
                  width: 0.2,
                  color: const Color.fromARGB(225, 220, 219, 219),
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 40,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.1, color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 108, 108, 108),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search your order here',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Image.asset(
                  "assets/images/accountimg/account.9-removebg-preview.png",
                  width: 40,
                ),
                Text(
                  "Filters",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 300),
            child: Image.asset(
              "assets/images/accountimg/account.10-removebg-preview.png",
              width: 190,
            ),
          ),
          Text(
            "You have no orders",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(height: 20),
          Container(
            height: 30,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 157, 157, 157),
              ),
              color: const Color.fromARGB(255, 33, 55, 247),
            ),
            child: Center(
              child: Text(
                "Start Shopping",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
