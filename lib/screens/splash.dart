import 'package:flutter/material.dart';
import 'package:project2/widgets/bottom%20navigation.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE500),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(
              "https://images.moneycontrol.com/static-mcnews/2024/12/20241212055950_flipkart.jpg?impolicy=website&width=770&height=431",
            ),
          ),
        ],
      ),
    );
  }

  Future splash() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    });
  }
}
