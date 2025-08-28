import 'package:flutter/material.dart';

Widget gro() {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          SizedBox(height: 60),
          Image.asset(
            "assets/images/cartimg/cart.5-removebg-preview.png",
            width: 300,
          ),
          Text(
            "Your basket is empty!",
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
          SizedBox(height: 70),
          Container(
            height: 330,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Deals of the day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 150),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 152, 49, 49),
                        ),
                        child: Center(
                          child: Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      endrow(),
                      SizedBox(width: 20),
                      endrow(
                        txt1: "assets/images/cartimg/cart.8.jpg",
                        txt2: "47%",
                        txt3: "SMR Gold Toor/Arhar",
                        txt4: "Daln(Split)",
                        txt5: "1 kg",
                        txt6: "MRP 240",
                        txt7: "₹125",
                      ),
                      SizedBox(width: 20),
                      endrow(
                        txt1: "assets/images/cartimg/cart.10.png",
                        txt2: "32%",
                        txt3: "Tata Tea Gold Black",
                        txt4: "Tea with Gently roll..",
                        txt5: "750g",
                        txt6: "MRP 560",
                        txt7: "₹379",
                      ),
                      SizedBox(width: 20),
                      endrow(
                        txt1: "assets/images/cartimg/cart.9.jpg",
                        txt2: "18%",
                        txt3: "BRITANNIA Milk Bikis",
                        txt4: "Cookies Biscut",
                        txt5: "5 x 87 g",
                        txt6: "MRP 90",
                        txt7: "₹73",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget endrow({
  String? txt1,
  String? txt2,
  String? txt3,
  String? txt4,
  String? txt5,
  String? txt6,
  String? txt7,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 125,
        width: 140,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 187, 187, 187),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                txt1 ?? "assets/images/cartimg/cart.7.png",
                width: 90,
              ),
            ),
            Positioned(
              top: -4,
              left: -8,
              child: Image.asset(
                "assets/images/cartimg/cart.6-removebg-preview.png",
                width: 60,
              ),
            ),
            Positioned(
              left: 10,
              child: Column(
                children: [
                  Text(
                    txt2 ?? "42%",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "off",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Text(
        txt3 ?? "ProV California",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      Text(txt4 ?? "Indipendence Almo.."),
      SizedBox(height: 10),
      Text(
        txt5 ?? "2 x 250 g",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Text(
            txt6 ?? "MRP 698",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 11,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          SizedBox(width: 5),
          Text(txt7 ?? "₹400", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ],
  );
}
