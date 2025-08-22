import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 38, 147, 249),
              Color.fromARGB(2, 86, 173, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        height: 300,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 60),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(15),
                    child: Image.asset(
                      "assets/images/flipkart.png",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(15),
                    child: Image.asset(
                      "assets/images/pay.png",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(15),
                    child: Image.asset(
                      "assets/images/travel.png",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(15),
                    child: Image.asset(
                      "assets/images/grocery,dup.png",
                      height: 60,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text("673636", style: TextStyle(fontWeight: FontWeight.w800)),
                  SizedBox(width: 10),
                  Text(
                    "Select delivery location >",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 68, 254),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(221, 158, 158, 158),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 13),
                      Icon(Icons.search),
                      SizedBox(width: 13),
                      TextField(textAlign: TextAlign.start),
                      SizedBox(width: 13),
                      Icon(Icons.camera_alt),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
