import 'package:flutter/material.dart';

Widget fli() {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Image.asset(
            "assets/images/cartimg/cart.1-removebg-preview.png",
            width: 300,
          ),
          Text(
            "Your cart is empty!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25),
          Container(
            height: 35,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 33, 55, 247),
            ),
            child: Center(
              child: Text(
                "Shop now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 450,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Suggested for you",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 17, left: 20),
                  child: Text(
                    "Based on your Activity",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 129, 129, 129),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    sugg(
                      txt1: "assets/images/cartimg/cart.2-removebg-preview.png",
                      txt2: "  Tecno Pop 9G (Aurora Cloud,128 GB)(8 GB RAM)",
                      txt3: "  ₹9,999",
                      txt4: "14,999",
                      txt5: "  17% off",
                    ),
                    SizedBox(height: 30),
                    sugg(),
                    SizedBox(height: 300, width: 70),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget sugg({
  String? txt1,
  String? txt2,
  String? txt3,
  String? txt4,
  String? txt5,
}) {
  return Container(
    height: 300,
    width: 150,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Image.asset(
          txt1 ?? "assets/images/cartimg/cart.4-removebg-preview.png",
          width: 139,
        ),
        Text(
          txt2 ?? "  boAt airdopes 219, 40H Battery",
          style: TextStyle(fontWeight: FontWeight.w500),
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              txt3 ?? "  ₹1,099",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Text(
              txt4 ?? "3,990",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: const Color.fromARGB(255, 132, 132, 132),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              txt5 ?? "  72% off",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w900,
              ),
            ),
            Image.asset(
              "assets/images/cartimg/cart.3-removebg-preview.png",
              width: 70,
            ),
          ],
        ),
        Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
            border: BoxBorder.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              "Add to cart",
              style: TextStyle(
                color: const Color.fromARGB(255, 33, 55, 247),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
