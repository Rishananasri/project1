import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/screens/order.dart';

Widget topcon(BuildContext context) {
  return Container(
    height: 320,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: const Color.fromARGB(225, 220, 219, 219),
        ),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 60),
        Stack(
          children: [
            Container(
              height: 130,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 230, 237, 255),
              ),
            ),
            Positioned(
              top: 15,
              left: 10,
              child: Text(
                "Rishana",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
              top: 15,
              right: 20,
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(width: 1, color: Color(0xFFFEB253)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/accountimg/account1.png",
                      width: 25,
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 10,
              child: Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 126, 126, 126),
                    ),
                  ),
                  Image.asset(
                    "assets/images/accountimg/account2-removebg-preview.png",
                    width: 18,
                    color: const Color.fromARGB(255, 125, 125, 125),
                  ),
                  Text(
                    "Plus Silver ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: const Color.fromARGB(255, 132, 132, 132),
                    ),
                  ),
                  Image.asset(
                    "assets/images/accountimg/account.5.png",
                    width: 15,
                    color: const Color.fromARGB(255, 132, 132, 132),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(thickness: 1, height: 1),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderPage()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        FontAwesomeIcons.boxOpen,
                        color: Color.fromARGB(255, 40, 58, 221),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: const Color.fromARGB(255, 40, 58, 221),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Wishlist",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.only(left: 10)),
                  Icon(
                    FontAwesomeIcons.gift,
                    color: const Color.fromARGB(255, 40, 58, 221),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Coupons",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.only(left: 10)),
                  Icon(
                    Icons.headset_mic_outlined,
                    color: const Color.fromARGB(255, 40, 58, 221),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Help Center",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
      ],
    ),
  );
}

Widget custom() {
  return Container(
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 2,
          color: const Color.fromARGB(225, 220, 219, 219),
        ),
        top: BorderSide(
          width: 0.1,
          color: const Color.fromARGB(225, 220, 219, 219),
        ),
      ),
    ),
    child: Row(
      children: [
        Image.asset("assets/images/accountimg/account.3.png"),
        Column(
          children: [
            Row(
              children: [
                Text(
                  "Add/Verify your Email",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 5),
                Text('•', style: TextStyle(color: Colors.red, fontSize: 30)),
              ],
            ),
            Text(
              "Get latest updates of your orders",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(width: 30),
        Container(
          height: 35,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 33, 55, 247),
          ),
          child: Center(
            child: Text(
              "Update",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget endrow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 180,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(225, 220, 219, 219),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset(
              "assets/images/accountimg/account.7-removebg-preview.png",
            ),
            Text(
              "True Wireless",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      Container(
        height: 180,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(225, 220, 219, 219),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.asset("assets/images/accountimg/account.8.png"),
            Text("Mobiles", style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(width: 80),
    ],
  );
}
