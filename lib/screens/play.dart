import 'package:flutter/material.dart';
import 'package:project2/widgets/playscreen_widgets.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Play",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    playgrn(),
                    SizedBox(width: 15),
                    playcon(),
                    SizedBox(width: 15),
                    playcon(txt: "Trends for him"),
                    SizedBox(width: 15),
                    playcon(txt: "Trends for her"),
                    SizedBox(width: 15),
                    playcon(txt: "Home Hacks"),
                    SizedBox(width: 15),
                    playcon(txt: "Mobiles"),
                    SizedBox(width: 15),
                    playcon(txt: "Electronics"),
                    SizedBox(width: 15),
                    playcon(txt: "Appliances"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              profile(),
              SizedBox(height: 20),
              overimg(
                img: "assets/images/playimg/top.png",
                txt1: "4.1K",
                txt2: "2 Products",
              ),
              SizedBox(height: 10),
              aftrimg(),
              SizedBox(height: 70),
              profile(img: "assets/images/playimg/man.png", txt: "Asif khan"),
              SizedBox(height: 20),
              overimg(),
              SizedBox(height: 10),
              aftrimg(txt1: "What I Found Haul", txt2: "109"),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
